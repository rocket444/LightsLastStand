//Local variables setup
var _u_pos = u_pos;
var _u_pos2 = u_pos2;
var _u_zz = u_zz;
var _u_str = u_str;
var _u_dir = u_dir;
var _u_fov = u_fov;
var _vb = vb;

if (!surface_exists(shad_surf)) {
	shad_surf = surface_create(room_width, room_height);
}

surface_set_target(shad_surf);
draw_clear_alpha(c_black,0);
with(obj_light){

    //Draw the shadows (AKA light blockers)
	gpu_set_blendmode_ext_sepalpha(bm_zero, bm_one, bm_one, bm_zero);
    shader_set(shd_shadow);
    shader_set_uniform_f(_u_pos2,x,y);
    vertex_submit(_vb,pr_trianglelist,-1);

    //Draw the Light
    gpu_set_blendmode_ext_sepalpha(bm_inv_dest_alpha, bm_one, bm_zero, bm_zero);
    shader_set(shd_light);
    shader_set_uniform_f(_u_pos,x,y);
    shader_set_uniform_f(_u_zz, size);
    shader_set_uniform_f(_u_str, str);
    shader_set_uniform_f(_u_dir, dir);
    shader_set_uniform_f(_u_fov, fov);
    draw_rectangle_color(0,0, room_width, room_height, color, color, color, color, 0); //canvas for drawing the light
}
surface_reset_target();

gpu_set_blendmode_ext(bm_zero, bm_src_color);
shader_set(shd_shadsurf);
draw_surface_ext(shad_surf,0,0,1,1,0,c_white,1);
shader_reset();
gpu_set_blendmode(bm_normal);

