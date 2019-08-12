camera = camera_create();
guiX = 796
guiY = 448

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(guiX,guiY,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera

if(instance_exists(obj_player))
{
	follow = obj_player;
}
else
{
	follow = noone	
}

xTo = x;
yTo = y;

audio_play_sound(sound0, 100, true);