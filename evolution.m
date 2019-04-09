function new_state = evolution(cells, x, y)
    new_state = cells(x, y);
    neighbours = count_neighbours(cells, x, y);
    if neighbours < 2 || neighbours > 3
        new_state = 0;
    elseif neighbours == 3
        new_state = 1;
    end
end