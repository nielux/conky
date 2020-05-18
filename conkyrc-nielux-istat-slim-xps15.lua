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

----------------------------
-- Draw 4 vertical lines
----------------------------
local line_x = {l1=125, l2=250, l3=565, l4=730}
for line_num, line_val in next, line_x, nil do
line_settings={
line_start_x=line_val,
line_start_y=32,
line_width=0.2,
line_length=55,
line_col_r=1,
line_col_g=1,
line_col_b=1,
line_col_a=1,
}

f_vert_line(line_settings)
end

----------------------------

-- SETTINGS FOR HORIZONTAL INDICATOR BAR "f_indicator_bar"
-- Changes color when certain "alarm" value has been reached
-- http://crunchbanglinux.org/forums/post/180661/#p180661

  -- COLORS                    | R | G | B | A |
  -- Set bar background colors, 1.0,1.0,1.0,0.3 = fully opaque white
  -- Set bar indicator  colors, 0.2,0.4,0.8,0.9 = half opaque blue
  -- Set bar indicator  colors, 1,0.1.0,1.0,0.5 = half opaque purple
  -- Set bar indicator  colors, 0.8,0.8,0.2,0.8 = half opaque yellow
  -- Set alarm bar colors,      1.0,0.0,0.0,0.4 = half opaque red

-- Average CPU Bar
bar_settings={
bar_value=tonumber(conky_parse("${cpu cpu0}")),
bar_x=13,
bar_y=85,
bar_w=90,	-- bar width
bar_h=10,	-- bar height
bar_max=100,
bar_alarm=tonumber(90),
  -- Set bar background colors, 1,1,1,0.3 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0.2,0.4,0.8,0.9 = half opaque blue
bar_in_r=0.2,
bar_in_g=0.4,
bar_in_b=0.8,
bar_in_a=0.8,
  --set alarm bar color, 1,0,0,0.4 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

-- Memory usage Bar
bar_settings={
bar_value=tonumber(conky_parse("${memperc}")),
bar_x=135,
bar_y=85,
bar_w=90,	-- bar width
bar_h=10,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 0.2,0.4,0.8,0.9 = half opaque blue
bar_in_r=0.2,
bar_in_g=0.4,
bar_in_b=0.8,
bar_in_a=0.9,
  --set alarm bar color, 1,0,0,0.4 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

-- Root filesystem Bar
bar_settings={
bar_value=tonumber(conky_parse("${fs_used_perc /}")),
bar_x=260,
bar_y=85,
bar_w=90,	-- bar width
bar_h=10,	-- bar height
bar_max=100,
bar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,0.3 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 1,1,1,0.6 = half opaque white
bar_in_r=1,
bar_in_g=1,
bar_in_b=1,
bar_in_a=0.6,
  --set alarm bar color, 1,0,0,0.4 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)

-- Home filesystem Bar
bar_settings={
bar_value=tonumber(conky_parse("${fs_used_perc /var/lib/libvirt/images}")),
bar_x=415,
bar_y=85,
bar_w=90,	-- bar width
bar_h=10,	-- bar height
bar_max=100,
bar_alarm=tonumber(85),
  -- Set bar background colors, 1,1,1,0.3 = fully opaque white
bar_bg_r=1,
bar_bg_g=1,
bar_bg_b=1,
bar_bg_a=0.3,
  -- Set bar indicator colors, 1,1,1,0.6 = half opaque white
bar_in_r=1,
bar_in_g=1,
bar_in_b=1,
bar_in_a=0.6,
  --set alarm bar color, 1,0,0,0.4 = half opaque red
bar_al_r=1,
bar_al_g=0,
bar_al_b=0,
bar_al_a=0.4,
}

f_indicator_bar(bar_settings)


----------------------------

end  -- if updates>5

cairo_destroy(cr)
cairo_surface_destroy(cs)
cr=nil
end  -- end main function


----------------------------
-- VERTICAL LINE FUNCTION
----------------------------
function f_vert_line(lne)
local line_from_x=lne.line_start_x
local line_from_y=lne.line_start_y
local line_w=lne.line_width
local line_cap=CAIRO_LINE_CAP_BUTT
local line_col_r=lne.line_col_r
local line_col_g=lne.line_col_g
local line_col_b=lne.line_col_b
local line_col_a=lne.line_col_a
local line_to_x=line_from_x
local line_to_y=lne.line_start_y+lne.line_length
-- Draw the line!
cairo_set_line_width (cr,line_w)
cairo_set_line_cap (cr, line_cap)
cairo_set_source_rgba (cr,line_col_r,line_col_g,line_col_b,line_col_a)
cairo_move_to (cr,line_from_x,line_from_y)
cairo_line_to (cr,line_to_x,line_to_y)
cairo_stroke (cr)
end -- End function "f_vert_line"


----------------------------
-- INDICATOR BAR FUNCTION
----------------------------
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
       --Set indicator color "green"
       cairo_set_source_rgba (cr,bar_in_red,bar_in_green,bar_in_blue,bar_in_alpha)
   else
       --Set indicator color "red"
       cairo_set_source_rgba (cr,bar_al_red,bar_al_green,bar_al_blue,bar_al_alpha)
end

cairo_rectangle (cr,bar_startx,bar_starty,bar_indicator_length,-bar_height)
cairo_fill (cr)
end  -- End function "f_indicator_bar"


----------------------------

