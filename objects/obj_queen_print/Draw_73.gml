if (reveal_height > 0)
{
    var _draw_x = x - sprite_get_xoffset(print_spr) * x_scale;
    var _draw_y = y - sprite_get_yoffset(print_spr) * y_scale;
    draw_sprite_part_ext(print_spr, print_index, 0, 0, print_width, reveal_height, _draw_x, _draw_y, x_scale, y_scale, c_white, 1);
}