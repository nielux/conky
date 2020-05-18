-- This is a lua script for use in conky

--[[ this is a comment
and it can span multiple
lines until you end it with ]]

require 'cairo'

function conky_main()
if conky_window == nil then return end
local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
cr = cairo_create(cs)
local updates=tonumber(conky_parse('${updates}'))

if updates>5 then

--##############################

-- SETTINGS FOR HORIZONTAL LINE "f_horiz_line"
--line_width=1
--line_start_x=10
--line_start_y=100
--line_length=100
--line_red,line_green,line_blue,line_alpha=1,1,1,1




----------------------------

-- SETTINGS FOR HORIZONTAL INDICATOR BAR "f_indicator_bar"
-- Changes color when certain "alarm" value has been reached
-- http://crunchbanglinux.org/forums/post/180661/#p180661
-- Settings for indicator bar

bar_settings={
bar_value=tonumber(conky_parse("${cpu cpu1}")),
bar_x=52,
bar_y=139,
bar_w=190,	-- bar width
bar_h=6,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,1,0,0.5 = half opaque green
bar_in_r=0,
bar_in_g=1,
bar_in_b=0,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${cpu cpu2}")),
bar_x=52,
bar_y=153,
bar_w=190,	-- bar width
bar_h=6,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,1,0,0.5 = half opaque green
bar_in_r=0,
bar_in_g=1,
bar_in_b=0,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${cpu cpu3}")),
bar_x=52,
bar_y=167,
bar_w=190,	-- bar width
bar_h=6,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,1,0,0.5 = half opaque green
bar_in_r=0,
bar_in_g=1,
bar_in_b=0,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${cpu cpu4}")),
bar_x=52,
bar_y=181,
bar_w=190,	-- bar width
bar_h=6,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,1,0,0.5 = half opaque green
bar_in_r=0,
bar_in_g=1,
bar_in_b=0,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${cpu cpu5}")),
bar_x=52,
bar_y=195,
bar_w=190,	-- bar width
bar_h=6,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,1,0,0.5 = half opaque green
bar_in_r=0,
bar_in_g=1,
bar_in_b=0,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${cpu cpu6}")),
bar_x=52,
bar_y=209,
bar_w=190,	-- bar width
bar_h=6,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,1,0,0.5 = half opaque green
bar_in_r=0,
bar_in_g=1,
bar_in_b=0,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${cpu cpu7}")),
bar_x=52,
bar_y=223,
bar_w=190,	-- bar width
bar_h=6,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,1,0,0.5 = half opaque green
bar_in_r=0,
bar_in_g=1,
bar_in_b=0,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${cpu cpu8}")),
bar_x=52,
bar_y=237,
bar_w=190,	-- bar width
bar_h=6,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,1,0,0.5 = half opaque green
bar_in_r=0,
bar_in_g=1,
bar_in_b=0,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${memperc}")),
bar_x=52,
bar_y=326,
bar_w=190,	-- bar width
bar_h=9,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0.8,0.8,0.2,0.7 = half opaque yellow
bar_in_r=0.8,
bar_in_g=0.8,
bar_in_b=0.2,
bar_in_a=0.8,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${swapperc}")),
bar_x=52,
bar_y=358,
bar_w=190,	-- bar width
bar_h=9,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 1,0.1,1,0.5 = half opaque purple
bar_in_r=1,
bar_in_g=0.1,
bar_in_b=1,
bar_in_a=0.6,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${fs_used_perc /}")),
bar_x=52,
bar_y=443,
bar_w=190,	-- bar width
bar_h=8,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,0.2,0.8,0.5 = half opaque blue
bar_in_r=0,
bar_in_g=0.2,
bar_in_b=0.8,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${fs_used_perc /boot}")),
bar_x=52,
bar_y=475,
bar_w=190,	-- bar width
bar_h=8,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,0.2,0.8,0.5 = half opaque blue
bar_in_r=0,
bar_in_g=0.2,
bar_in_b=0.8,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${fs_used_perc /home}")),
bar_x=52,
bar_y=507,
bar_w=190,	-- bar width
bar_h=8,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,0.2,0.8,0.5 = half opaque blue
bar_in_r=0,
bar_in_g=0.2,
bar_in_b=0.8,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${fs_used_perc /var/lib/libvirt/images}")),
bar_x=52,
bar_y=539,
bar_w=190,	-- bar width
bar_h=8,	-- bar height
bar_max=100,
bar_alarm=tonumber(90),	-- /srv gets a higher alarm due to it's size!
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,0.2,0.8,0.5 = half opaque blue
bar_in_r=0,
bar_in_g=0.2,
bar_in_b=0.8,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

bar_settings={
bar_value=tonumber(conky_parse("${fs_used_perc /home/niels/.vagrant.d}")),
bar_x=52,
bar_y=572,
bar_w=190,	-- bar width
bar_h=8,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0,0.2,0.8,0.5 = half opaque blue
bar_in_r=0,
bar_in_g=0.2,
bar_in_b=0.8,
bar_in_a=0.4,
  --set alarm bar color, 1,0,0,0.5 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

-- Call other functions
--f_horiz_line(line_width,line_start_x,line_start_y,line_length)

--##############################

end  -- if updates>5

cairo_destroy(cr)
cairo_surface_destroy(cs)
cr=nil
end  -- end main function



----------------------------
-- INDICATOR BAR FUNCTION
function f_indicator_bar(nlx)
local bar_ind_value=nlx.bar_value
local bar_startx=nlx.bar_x
local bar_starty=nlx.bar_y
local bar_width=nlx.bar_w
local bar_height=nlx.bar_h
local bar_max_value=nlx.bar_max
local bar_alarm_value=nlx.bar_alarm
local bar_bg_red=nlx.bar_bg_r
local bar_bg_green=nlx.bar_bg_g
local bar_bg_blue=nlx.bar_bg_b
local bar_bg_alpha=nlx.bar_bg_a
local bar_in_red=nlx.bar_in_r
local bar_in_green=nlx.bar_in_g
local bar_in_blue=nlx.bar_in_b
local bar_in_alpha=nlx.bar_in_a
local bar_al_red=nlx.bar_al_r
local bar_al_green=nlx.bar_al_g
local bar_al_blue=nlx.bar_al_b
local bar_al_alpha=nlx.bar_al_a
-- Draw background
cairo_set_source_rgba (cr,bar_bg_red,bar_bg_green,bar_bg_blue,bar_bg_alpha)
cairo_rectangle (cr,bar_startx,bar_starty,bar_width,-bar_height)
cairo_fill (cr)
-- Draw indicator
bar_scale=bar_width/bar_max_value
bar_indicator_length=bar_scale*bar_ind_value

if bar_ind_value<bar_alarm_value
   then
       --set indicator color "green"
       cairo_set_source_rgba (cr,bar_in_red,bar_in_green,bar_in_blue,bar_in_alpha)
   else
       --set indicator color "red"
       cairo_set_source_rgba (cr,bar_al_red,bar_al_green,bar_al_blue,bar_al_alpha)
end

cairo_rectangle (cr,bar_startx,bar_starty,bar_indicator_length,-bar_height)
cairo_fill (cr)
end  -- end function "f_indicator_bar"

----------------------------

-- HORIZONTAL LINE FUNCTION
--function f_horiz_line(line_width,line_start_x,line_start_y,line_length)
--line_cap=CAIRO_LINE_CAP_BUTT
--line_end_x=line_start_x+line_length
--line_end_y=line_start_y
--cairo_set_line_width (cr,line_width)
--cairo_set_line_cap  (cr, line_cap)
--cairo_set_source_rgba (cr,line_red,line_green,line_blue,line_alpha)
--cairo_move_to (cr,line_start_x,line_start_y)
--cairo_line_to (cr,line_end_x,line_end_y)
--cairo_stroke (cr)
--end  -- end function "f_line"

----------------------------

