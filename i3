set $mod Mod1
set $browser firefox
set $no --no-startup-id


font pango:monospace 8
floating_modifier $mod

exec $no startup

bindsym $mod+e exec $no flash_window -o 0.85 -t 120
bindsym $mod+Up exec $no amixer -q sset Master 2%+
bindsym $mod+Down exec $no amixer -q sset Master 2%-

focus_follows_mouse no

bindsym $mod+Return exec urxvt
bindsym $mod+Shift+Return exec urxvt -name floating_urxvt
for_window [class="URxvt" instance="floating_urxvt"] floating enable
assign [class="Firefox"] workspace 2

assign [class="rdesktop"] workspace 10
for_window [class="rdesktop"] fullscreen enable

default_border none
default_floating_border none
bindsym $mod+Tab workspace back_and_forth
bindsym $mod+a open
bindsym $mod+i exec $no icons

bindsym $mod+d exec $no dmenu_run
bindsym $mod+q kill
bindsym $mod+w exec $browser

bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

bindsym $mod+Shift+semicolon split h 

bindsym $mod+Shift+v split v

bindsym $mod+f fullscreen toggle

bindsym $mod+Shift+space floating toggle

bindsym $mod+space focus mode_toggle

set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
set $ws10 "10"

workspace $ws1 gaps inner 10

bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9
bindsym $mod+0 workspace $ws10

bindsym $mod+Shift+1 move container to workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8
bindsym $mod+Shift+9 move container to workspace $ws9
bindsym $mod+Shift+0 move container to workspace $ws10

bindsym $mod+Shift+c reload

bindsym $mod+Shift+r restart

bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

set $design Design Mode
bindsym $mod+Shift+d mode $design
mode "$design" {
	bindsym b exec wal -a '90' --saturate 0.8 -i ~/Wallpapers 

	bindsym $mod+h focus left
	bindsym $mod+j focus down
	bindsym $mod+k focus up
	bindsym $mod+l focus right

	bindsym $mod+Shift+h move left
	bindsym $mod+Shift+j move down
	bindsym $mod+Shift+k move up
	bindsym $mod+Shift+l move right


	bindsym a open
	bindsym g gaps inner current plus 2
	bindsym Shift+g gaps inner current minus 2

	bindsym o gaps outer current plus 2
	bindsym Shift+o gaps outer current minus 2

	bindsym h resize shrink width 10 px or 10 ppt
        bindsym j resize grow height 10 px or 10 ppt
        bindsym k resize shrink height 10 px or 10 ppt
        bindsym l resize grow width 10 px or 10 ppt

        bindsym Return mode "default"
        bindsym Escape mode "default"

}
