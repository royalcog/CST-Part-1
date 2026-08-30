switch (phase)
{
    case "printing":
	    reveal_timer++;

	    if (reveal_timer == 1)
	    {
	        audio_play_sound(snd_wing, 8, false);
	    }

	    var _t = clamp(reveal_timer / reveal_length, 0, 1);
	    reveal_height = print_height * _t;

	    if (reveal_timer >= reveal_length)
	    {
	        phase = "popping";
	    }
	break;

    case "popping":
        pop_timer++;
        var _t = clamp(pop_timer / pop_length, 0, 1);
        x_scale = lerp(squish_x_scale, full_x_scale, _t);

        if (pop_timer >= pop_length)
        {
            phase = "done";
        }
    break;

    case "done":
        post_wait_timer++;
        if (post_wait_timer >= post_wait_time)
        {
            phase = "flying_off";
        }
    break;

    case "flying_off":
        x = lerp(x, fly_target_x, fly_speed);

        if (abs(x - fly_target_x) < 2)
        {
            instance_destroy();
        }
    break;
}