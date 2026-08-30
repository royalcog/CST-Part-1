print_spr = spr_lancer_dialogue;
print_index = 1;
print_width = sprite_get_width(print_spr);
print_height = sprite_get_height(print_spr);

mouth_offset_x = 0;
mouth_offset_y = 20; // distance from Queen's origin down to her mouth — tune this

x = obj_queen.x + mouth_offset_x;
y = obj_queen.y + mouth_offset_y;

squish_x_scale = 0.4; // thin while printing
full_x_scale = 2;     // full width once popped open
x_scale = squish_x_scale;
y_scale = 2;

reveal_height = 0;
reveal_timer = 0;
reveal_length = 40;

pop_timer = 0;
pop_length = 8;

phase = "printing";

audio_play_sound(snd_wing, 8, false);

light_on = true;
light_radius = 90;
light_strength = 0.6;
light_offset_x = 0;
light_offset_y = (print_height * y_scale) / 2;