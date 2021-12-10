// Gmsh project created on Sun Nov 28 23:14:47 2021
SetFactory("OpenCASCADE");

height = 8.4;

Point(1) = {0, 0, 0};
Point(2) = {0, height, 0};
Point(3) = {7, 0, 0};
Point(4) = {7, height, 0};

Point(21) = {2.5, 0, 0};
Point(22) = {4.5, 0, 0};
Point(23) = {2.5, -0.7, 0};
Point(24) = {4.5, -0.7, 0};

Point(31) = {2.5, height, 0};
Point(32) = {4.5, height, 0};
Point(33) = {2.5, height + 0.7, 0};
Point(34) = {4.5, height + 0.7, 0};

//+
Line(1) = {1, 2};
//+
Line(2) = {2, 31};
//+
Line(3) = {31, 33};
//+
Line(4) = {33, 34};
//+
Line(5) = {34, 32};
//+
Line(6) = {32, 4};
//+
Line(7) = {4, 3};
//+
Line(8) = {3, 22};
//+
Line(9) = {22, 24};
//+
Line(10) = {24, 23};
//+
Line(11) = {23, 21};
//+
Line(12) = {21, 1};
