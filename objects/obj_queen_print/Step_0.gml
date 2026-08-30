switch (phase)
{
    case "rising":
        rise_timer++;
        var _t = clamp(rise_timer / rise_length, 0, 1);
        var _ease = 1 - power(1 - _t, 3); // ease-out cubic
        y = lerp(start_y, end_y, _ease);

        if (rise_timer >= rise_length)
        {
            audio_play_sound(snd_wing, 8, false);
            phase = "popping";
        }
    break;

    case "popping":
        pop_timer++;
        var _t = clamp(pop_timer / pop_length, 0, 1);
        x_scale = lerp(0.4, 2, _t);

        if (pop_timer >= pop_length)
        {
            phase = "done";
        }
    break;
}