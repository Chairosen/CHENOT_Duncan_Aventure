//création de l'afficheur d'inventaire
var camera_id = view_camera[0];
var camera_y = camera_get_view_y(camera_id);
var camera_x = camera_get_view_x(camera_id);

var printerX = camera_x+camera_get_view_width(camera_id)/2-64;
var printerY = camera_y+camera_get_view_height(camera_id)/2-64;
instance_create_layer(printerX,printerY,"Inventory",O_Inventory_Printer);