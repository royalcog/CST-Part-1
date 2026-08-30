print_spr = spr_lancer_dialogue;
print_index = 1; // Lancer's 2nd dialogue frame
print_width = sprite_get_width(print_spr);
print_height = sprite_get_height(print_spr);

mouth_offset_x = 0;
mouth_offset_y = 20; // distance from Queen's origin down to her mouth — tune this

x = obj_queen.x + mouth_offset_x;
y = obj_queen.y + mouth_offset_y;

x_scale = 2;
y_scale = 2;

reveal_height = 0;
reveal_timer = 0;
reveal_length = 40; // frames to fully print out

pop_timer = 0;
pop_length = 8;

phase = "printing";

audio_play_sound(snd_wing, 8, false); // placeholder until you have a real "printing" sound

// light punch-through so obj_lighting's darkness doesn't cover it
light_on = true;
light_radius = 60;
light_strength = 0.5;
light_offset_x = 0;
light_offset_y = (print_height * y_scale) / 2;