classdef count_neighbours_tests < matlab.unittest.TestCase
    
    methods (Test)
        
        function should_have_four_living_neighbours(testCase)
            cells = [
                [0,1,0];
                [1,0,1];
                [0,1,0]
            ];
            count = count_neighbours(cells, 2, 2);
            testCase.assertEqual(count, 4);
        end
        
        function should_have_six_living_neighbours(testCase)
            cells = [
                [1,1,0];
                [0,0,1];
                [1,1,1]
            ];
            count = count_neighbours(cells, 2, 2);
            testCase.assertEqual(count, 6);
        end
        
        function should_not_count_itself_to_neighbours(testCase)
            cells = [
                [1,1,1];
                [1,1,1];
                [1,1,1]
            ];
            count = count_neighbours(cells, 2, 2);
            testCase.assertEqual(count, 8);
        end
        
        function should_count_eight_neighbours_in_4_by_4_grid(testCase)
            cells = [
                [0,1,0,1];
                [1,0,1,0];
                [1,1,1,1];
                [0,1,0,1];
            ];
            count = count_neighbours(cells, 2, 2);
            testCase.assertEqual(count, 6);
        end
        
        function should_count_border_neighbours_correctly(testCase)
            cells = [
                [1,0,1];
                [0,1,1];
                [1,0,1]
            ];
            count = count_neighbours(cells, 2, 1);
            testCase.assertEqual(count, 3);
        end
    end
end