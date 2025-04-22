// Inherit the parent event
event_inherited();
var xBar = camera_get_view_width(view_camera[0]);
var yBar = camera_get_view_height(view_camera[0]);
var HPBar = self.HP*100/self.HPMax;
draw_healthbar(xBar/3,32,xBar*2/3,92,HPBar,c_black,c_red,c_red,0,1,1);