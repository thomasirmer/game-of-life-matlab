function count = count_neighbours(cells, x, y)
    padded_cells = padarray(cells, [1, 1]);
    neighbourhood = padded_cells(x:x+2,y:y+2);
    neighbour_filter = logical([
        [1,1,1];
        [1,0,1];
        [1,1,1];
    ]);
    count = sum(neighbourhood(neighbour_filter));
end