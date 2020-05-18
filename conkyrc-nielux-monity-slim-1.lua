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
-- Draw 1 vertical line
----------------------------
--local line_x = {l1=5}
--for line_num, line_val in next, line_x, nil do
--line_settings={
--line_start_x=line_val,
--line_start_y=15,
--line_width=0.2,
--line_length=585,
--line_col_r=1,
--line_col_g=1,
--line_col_b=1,
--line_col_a=1,
--}

--f_vert_line(line_settings)
--end

----------------------------
-- SETTINGS FOR INDICATOR BARS "f_hor_indicator_bar" / "f_ver_indicator_bar"
-- Changes color when certain "alarm" value has been reached

-- Average CPU Bar (vertical)
--vbar_settings={
--vbar_value=tonumber(conky_parse("${cpu cpu0}")),
--vbar_x=100,
--vbar_y=85,
--vbar_w=15,	-- bar width
--vbar_h=52,	-- bar height
--vbar_max=100,
--vbar_alarm=tonumber(90),
  -- Set bar background colors, 1,1,1,0.3 = fully opaque white
--vbar_bg_r=1,
--vbar_bg_g=1,
--vbar_bg_b=1,
--vbar_bg_a=0.3,
  -- Set bar indicator colors, 0.2,0.4,0.8,0.9 = half opaque blue
--vbar_in_r=0.2,
--vbar_in_g=0.4,
--vbar_in_b=0.8,
--vbar_in_a=0.8,
  --set alarm bar color, 1,0,0,0.4 = half opaque red
--vbar_al_r=1,
--vbar_al_g=0,
--vbar_al_b=0,
--vbar_al_a=0.4,
--}

--f_ver_indicator_bar(vbar_settings)

-- Memory usage Bar (vertical)
--vbar_settings={
--vbar_value=tonumber(conky_parse("${memperc}")),
--vbar_x=225,
--vbar_y=85,
--vbar_w=15,	-- bar width
--vbar_h=52,	-- bar height
--vbar_max=100,
--vbar_alarm=tonumber(90),
  -- Set bar background colors, 1,1,1,1 = fully opaque white
--vbar_bg_r=1,
--vbar_bg_g=1,
--vbar_bg_b=1,
--vbar_bg_a=0.3,
  -- Set bar indicator colors, 0.2,0.4,0.8,0.9 = half opaque blue
--vbar_in_r=0.2,
--vbar_in_g=0.4,
--vbar_in_b=0.8,
--vbar_in_a=0.9,
  --set alarm bar color, 1,0,0,0.4 = half opaque red
--vbar_al_r=1,
--vbar_al_g=0,
--vbar_al_b=0,
--vbar_al_a=0.4,
--}

--f_ver_indicator_bar(vbar_settings)

-- Root filesystem Bar (horizontal)
hbar_settings={
hbar_value=tonumber(conky_parse("${fs_used_perc /}")),
hbar_x=15,
hbar_y=402,
hbar_w=115,	-- bar width
hbar_h=8,	-- bar height
hbar_max=100,
hbar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,0.3 = fully opaque white
hbar_bg_r=1,
hbar_bg_g=1,
hbar_bg_b=1,
hbar_bg_a=0.3,
  -- Set bar indicator colors, 1,1,1,0.6 = half opaque white
hbar_in_r=1,
hbar_in_g=1,
hbar_in_b=1,
hbar_in_a=0.6,
  --set alarm bar color, 1,0,0,0.4 = half opaque red
hbar_al_r=1,
hbar_al_g=0,
hbar_al_b=0,
hbar_al_a=0.4,
}

f_hor_indicator_bar(hbar_settings)

-- Home filesystem Bar (horizontal)
hbar_settings={
hbar_value=tonumber(conky_parse("${fs_used_perc /boot}")),
hbar_x=15,
hbar_y=477,
hbar_w=115,	-- bar width
hbar_h=8,	-- bar height
hbar_max=100,
hbar_alarm=tonumber(80),
  -- Set bar background colors, 1,1,1,0.3 = fully opaque white
hbar_bg_r=1,
hbar_bg_g=1,
hbar_bg_b=1,
hbar_bg_a=0.3,
  -- Set bar indicator colors, 1,1,1,0.6 = half opaque white
hbar_in_r=1,
hbar_in_g=1,
hbar_in_b=1,
hbar_in_a=0.6,
  --set alarm bar color, 1,0,0,0.4 = half opaque red
hbar_al_r=1,
hbar_al_g=0,
hbar_al_b=0,
hbar_al_a=0.4,
}

f_hor_indicator_bar(hbar_settings)


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
-- HORIZONTAL INDICATOR BAR FUNCTION
----------------------------
function f_hor_indicator_bar(nlx)
local hbar_ind_value=nlx.hbar_value
local hbar_startx=nlx.hbar_x
local hbar_starty=nlx.hbar_y
local hbar_width=nlx.hbar_w
local hbar_height=nlx.hbar_h
local hbar_max_value=nlx.hbar_max
local hbar_alarm_value=nlx.hbar_alarm
local hbar_bg_red=nlx.hbar_bg_r
local hbar_bg_green=nlx.hbar_bg_g
local hbar_bg_blue=nlx.hbar_bg_b
local hbar_bg_alpha=nlx.hbar_bg_a
local hbar_in_red=nlx.hbar_in_r
local hbar_in_green=nlx.hbar_in_g
local hbar_in_blue=nlx.hbar_in_b
local hbar_in_alpha=nlx.hbar_in_a
local hbar_al_red=nlx.hbar_al_r
local hbar_al_green=nlx.hbar_al_g
local hbar_al_blue=nlx.hbar_al_b
local hbar_al_alpha=nlx.hbar_al_a
-- Draw background
cairo_set_source_rgba (cr,hbar_bg_red,hbar_bg_green,hbar_bg_blue,hbar_bg_alpha)
cairo_rectangle (cr,hbar_startx,hbar_starty,hbar_width,-hbar_height)
cairo_fill (cr)
-- Draw indicator
hbar_scale=hbar_width/hbar_max_value
hbar_indicator_length=hbar_scale*hbar_ind_value

if hbar_ind_value<hbar_alarm_value
   then
       --Set indicator color "green"
       cairo_set_source_rgba (cr,hbar_in_red,hbar_in_green,hbar_in_blue,hbar_in_alpha)
   else
       --Set indicator color "red"
       cairo_set_source_rgba (cr,hbar_al_red,hbar_al_green,hbar_al_blue,hbar_al_alpha)
end

cairo_rectangle (cr,hbar_startx,hbar_starty,hbar_indicator_length,-hbar_height)
cairo_fill (cr)
end  -- End function "f_hor_indicator_bar"


----------------------------
-- VERTICAL INDICATOR BAR FUNCTION
----------------------------
--function f_ver_indicator_bar(pep)
--local vbar_ind_value=pep.vbar_value
--local vbar_startx=pep.vbar_x
--local vbar_starty=pep.vbar_y
--local vbar_width=pep.vbar_w
--local vbar_height=pep.vbar_h
--local vbar_max_value=pep.vbar_max
--local vbar_alarm_value=pep.vbar_alarm
--local vbar_bg_red=pep.vbar_bg_r
--local vbar_bg_green=pep.vbar_bg_g
--local vbar_bg_blue=pep.vbar_bg_b
--local vbar_bg_alpha=pep.vbar_bg_a
--local vbar_in_red=pep.vbar_in_r
--local vbar_in_green=pep.vbar_in_g
--local vbar_in_blue=pep.vbar_in_b
--local vbar_in_alpha=pep.vbar_in_a
--local vbar_al_red=pep.vbar_al_r
--local vbar_al_green=pep.vbar_al_g
--local vbar_al_blue=pep.vbar_al_b
--local vbar_al_alpha=pep.vbar_al_a
-- Draw background
--cairo_set_source_rgba (cr,vbar_bg_red,vbar_bg_green,vbar_bg_blue,vbar_bg_alpha)
--cairo_rectangle (cr,vbar_startx,vbar_starty,vbar_width,-vbar_height)
--cairo_fill (cr)
-- Draw indicator
--vbar_scale=vbar_height/vbar_max_value
--vbar_indicator_length=vbar_scale*vbar_ind_value

--if vbar_ind_value<vbar_alarm_value
--   then
       --Set indicator color "green"
--       cairo_set_source_rgba (cr,vbar_in_red,vbar_in_green,vbar_in_blue,vbar_in_alpha)
--   else
       --Set indicator color "red"
--       cairo_set_source_rgba (cr,vbar_al_red,vbar_al_green,vbar_al_blue,vbar_al_alpha)
--end

--cairo_rectangle (cr,vbar_startx,vbar_starty,vbar_width,-vbar_indicator_length)
--cairo_fill (cr)
--end  -- End function "f_ver_indicator_bar"


----------------------------
