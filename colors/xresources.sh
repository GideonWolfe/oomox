get_color () {
	xrdb -query | grep "$1:" | cut -f2 | sed -r 's/#//' | head -n 1
}
color () {
	get_color color$1
}
color_bg () {
	get_color "*background"
}
color_fg () {
	get_color "*foreground"
}

   NAME="follow xresources theme"
     BG=$(color 15)
     FG=$(color 0)
 SEL_BG=$(color 2)
 SEL_FG=$(color_fg)
 TXT_BG=$(color_fg)
 TXT_FG=$(color 0)
MENU_BG=$(color 0)
MENU_FG=$(color 2)
 BTN_BG=$(color 7)
 BTN_FG=$(color_fg)
