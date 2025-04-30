draw_self();
draw_set_color(buttonTextColor);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_text(x+image_xscale*32,y+image_yscale*32,buttonText);
draw_text_transformed(x+image_xscale*32,y+image_yscale*32,buttonText,image_xscale/1.5,image_xscale,0)
draw_set_color($FFFFFFFF);