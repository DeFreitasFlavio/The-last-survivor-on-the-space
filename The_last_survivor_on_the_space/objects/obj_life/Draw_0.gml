// Variables camera

var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);
var camera_w = camera_get_view_width(view_camera[0]);
var camera_h = camera_get_view_height(view_camera[0]);
var txt_life = "Life : " + string(obj_player.player_hp);

// Positionner les santé player

draw_set_font(fnt_score);
draw_set_halign(fa_right);
draw_text(camera_x + camera_w*13/14, camera_y + camera_h/14, txt_life);