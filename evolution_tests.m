classdef evolution_tests < matlab.unittest.TestCase
    
    methods (Test)
        
        function cell_should_die_when_0_neighbours(testCase)
            cells = [
                [0,0,0];
                [0,1,0];
                [0,0,0]
            ];
            cell = evolution(cells, 2, 2);
            testCase.assertEqual(cell, 0);
        end
        
        function cell_should_die_when_1_neighbours(testCase)
            cells = [
                [1,0,0];
                [0,1,0];
                [0,0,0]
            ];
            cell = evolution(cells, 2, 2);
            testCase.assertEqual(cell, 0);
        end
        
        function cell_should_survive_when_2_neighbours(testCase)
            cells = [
                [1,0,0];
                [0,1,0];
                [0,0,1]
            ];
            cell = evolution(cells, 2, 2);
            testCase.assertEqual(cell, 1);
        end
        
        function cell_should_survive_when_3_neighbours(testCase)
            cells = [
                [1,0,1];
                [0,1,0];
                [0,0,1]
            ];
            cell = evolution(cells, 2, 2);
            testCase.assertEqual(cell, 1);
        end
        
        function cell_should_die_when_4_neighbours(testCase)
            cells = [
                [1,0,1];
                [0,1,0];
                [1,0,1]
            ];
            cell = evolution(cells, 2, 2);
            testCase.assertEqual(cell, 0);
        end
        
        function cell_should_die_when_8_neighbours(testCase)
            cells = [
                [1,1,1];
                [1,1,1];
                [1,1,1]
            ];
            cell = evolution(cells, 2, 2);
            testCase.assertEqual(cell, 0);
        end
        
        function cell_should_be_born_when_3_neighbours(testCase)
            cells = [
                [1,0,0];
                [1,0,0];
                [1,0,0]
            ];
            cell = evolution(cells, 2, 2);
            testCase.assertEqual(cell, 1);
        end
        
        function cell_should_not_be_born_when_2_neighbours(testCase)
            cells = [
                [1,0,0];
                [0,0,0];
                [1,0,0]
            ];
            cell = evolution(cells, 2, 2);
            testCase.assertEqual(cell, 0);
        end
        
        function cell_should_not_be_born_when_4_neighbours(testCase)
            cells = [
                [1,0,1];
                [0,0,0];
                [1,0,1]
            ];
            cell = evolution(cells, 2, 2);
            testCase.assertEqual(cell, 0);
        end
    end
end