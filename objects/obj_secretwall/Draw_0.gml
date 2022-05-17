/// @description set the shader alpha
if layer_exists(mylayer)
{
	layer_set_visible(mylayer, alpha > 0);
	if alpha != 1 && alpha != 0
	{
		layer_shader(mylayer, shd_layeralpha);
		
		shader_set(shd_layeralpha);
		shader_set_uniform_f(uniform, alpha);
		shader_reset();
	}
	else
		layer_shader(mylayer, -1);
}

