/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var xCam = clamp(o_player.x - hCam /2,0,room_width-hCam );
var yCam = clamp(o_player.y - wCam /2,0,room_height-wCam );

var curX = camera_get_view_x(view_camera[0]);
var curY = camera_get_view_y(view_camera[0]);

var newX = lerp(curX, xCam, 0.1);
var newY = lerp(curY, yCam, 0.1);

camera_set_view_pos(view_camera[0] ,newX ,newY);
 
layer_x(layer_get_id("background"), newX * 0.65);
layer_y(layer_get_id("background"), newY * 0.65);