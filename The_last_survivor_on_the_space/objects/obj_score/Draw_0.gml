// Variables camera

var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);
var camera_w = camera_get_view_width(view_camera[0]);
var camera_h = camera_get_view_height(view_camera[0]);
var txt_score = "Score : " + string(player_score);

// Positionner le score

draw_set_font(fnt_score);
draw_set_halign(fa_center);
draw_text(camera_x + camera_w/2, camera_y + camera_h/10, txt_score);