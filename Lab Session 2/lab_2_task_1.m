% Initialization of Matrices
% Semi-colon ";" indicates the completion of row, while space the completion of column
A = [2 9 0 0; 
     0 4 1 4;
     7 5 5 1;
     7 8 7 4;]; % Square Vector (rows = columns)
b = [-1;
      6;
      0;
      9;]; % Column Vector
a = [3 -2 4 -5]; % Row Vector

part_a = A*b % Multiplies both vectors into rows * columns
part_b = a+4 % Adds a scalar '4' in each element of vector
part_c = b*a % Multiplies both vectors into rows * columns (same as part (a))
part_d = a.*b.' % the keywords ".'" after any vector converts the vector into it's transpose 

part_e = A * a.' % the keywords ".'" after any vector converts the vector into it's transpose (same as part (d))
