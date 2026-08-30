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
        x_scale = lerp(1.8, 2, _t);
        y_scale = lerp(1.8, 2, _t);

        if (pop_timer >= pop_length)
        {
            phase = "done";
        }
    break;
}