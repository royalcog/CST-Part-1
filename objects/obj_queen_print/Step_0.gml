switch (phase)
{
    case "printing":
        reveal_timer++;
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
}