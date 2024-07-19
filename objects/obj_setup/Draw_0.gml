//Local variables setup
var _u_pos = u_pos;
var _u_pos2 = u_pos2;
var _u_zz = u_zz;
var _vb = vb;

if (!surface_exists(shad_surf)) {
	shad_surf = surface_create(320,180);
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
    draw_rectangle_color(0,0,1792,1024, color, color, color, color, 0); //canvas for drawing the light
}
shader_reset();
surface_reset_target();

gpu_set_blendmode_ext(bm_zero, bm_src_color);
draw_surface(shad_surf,0,0);
gpu_set_blendmode(bm_normal);
