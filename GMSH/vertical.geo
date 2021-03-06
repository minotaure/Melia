// Gmsh project created on Sun Nov 28 18:54:01 2021
SetFactory("OpenCASCADE");
// //+
// Rectangle(1) = {0, 0, 0, 7, 14, 0};
// //+
// Rectangle(2) = {2.5, -0.7, 0, 2, 0.7, 0};
// //+
// Rectangle(3) = {2.5, 14, 0, 2, 0.7, 0};
// //+
// Rectangle(4) = {2.5, 6.75, 0, 2, 0.5, 0};

//+
Point(10) = {0, 0, 0};
Point(11) = {0, 14, 0};
Point(12) = {7, 14, 0};
Point(13) = {7, 0, 0};

Point(20) = {2.5, -0.7, 0};
Point(21) = {2.5, 0, 0};
Point(22) = {4.5, -0.7, 0};
Point(23) = {4.5, 0, 0};

Point(30) = {2.5, 6.75, 0};
Point(31) = {2.5, 7.2, 0}; // et pas 7.25 pour le jeu à l'impression
Point(32) = {4.5, 6.75, 0};
Point(33) = {4.5, 7.2, 0};

Point(40) = {2.5, 14, 0};
Point(41) = {2.5, 14.7, 0};
Point(42) = {4.5, 14, 0};
Point(43) = {4.5, 14.7, 0};



//+
Line(1) = {10, 11};
//+
Line(2) = {11, 40};
//+
Line(3) = {40, 41};
//+
Line(4) = {41, 43};
//+
Line(5) = {43, 42};
//+
Line(6) = {42, 12};
//+
Line(7) = {12, 13};
//+
Line(8) = {13, 23};
//+
Line(9) = {23, 22};
//+
Line(10) = {22, 20};
//+
Line(11) = {20, 21};
//+
Line(12) = {21, 10};
//+
Line(13) = {30, 31};
//+
Line(14) = {31, 33};
//+
Line(15) = {33, 32};
//+
Line(16) = {32, 30};
