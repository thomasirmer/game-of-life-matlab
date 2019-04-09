sizeX = 100;
sizeY = 100;
cells = zeros(sizeX, sizeY);

cells(25, 25) = 1;
cells(25, 26) = 1;
cells(25, 27) = 1;

cells(50, 50) = 1;
cells(51, 50) = 1;
cells(52, 50) = 1;
cells(52, 49) = 1;
cells(51, 48) = 1;

cells(75, 75) = 1;
cells(76, 75) = 1;
cells(77, 75) = 1;
cells(78, 75) = 1;
cells(78, 74) = 1;

imshow(~cells);

while(1)
    cells_new = zeros(size(cells));
    
    for x = 1:sizeX
        for y = 1:sizeY
            cells_new(x, y) = evolution(cells, x, y);     
        end
    end
    
    cells = cells_new;
    
    cla reset;
    imshow(~cells);
    drawnow();
end