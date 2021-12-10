// Gmsh project created on Sat Nov 27 15:00:02 2021
SetFactory("OpenCASCADE");
// //+
// Rectangle(1) = {0, 0, 0, 10, 7, 0.2};
// //+
// Rectangle(2) = {0.3, 2.5, 0, 0.5, 2, 0};
// //+
// Rectangle(3) = {9.2, 2.5, 0, 0.5, 2, 0};

// base rectangle
Point(10) = {0, 0, 0};
Point(11) = {0, 7, 0};
Point(12) = {10, 7, 0};
Point(13) = {10, 0, 0};

Line(110) = {10, 11};
Line(111) = {11, 12};
Line(112) = {12, 13};
Line(113) = {13, 10};

// holes for vertical structure
// left hole
Point(20) = {0.3, 2.525, 0}; 
Point(21) = {0.3, 4.475, 0};
Point(22) = {0.75, 2.525, 0}; // on enlève 0.05 pour la tolérance
Point(23) = {0.75, 4.475, 0};

Line(120) = {20, 21};
Line(121) = {21, 23};
Line(122) = {23, 22};
Line(123) = {22, 20};

// right hole
Point(30) = {9.25, 2.525, 0};
Point(31) = {9.25, 4.475, 0};
Point(32) = {9.7, 2.525, 0};
Point(33) = {9.7, 4.475, 0};

Line(130) = {30, 31};
Line(131) = {31, 33};
Line(132) = {33, 32};
Line(133) = {32, 30};


// holes for the motors
// left hole
Point(40) = {0.5 + 1, 3, 0};
Point(41) = {0.5 + 1, 4, 0};
Point(42) = {0.95 + 1, 3, 0};
Point(43) = {0.95 + 1, 4, 0};

Line(140) = {40, 41};
Line(141) = {41, 43};
Line(142) = {43, 42};
Line(143) = {42, 40};

// right hole
Point(50) = {9.05 - 1, 3, 0};
Point(51) = {9.05 - 1, 4, 0};
Point(52) = {9.5 - 1, 3, 0};
Point(53) = {9.5 - 1, 4, 0};

Line(150) = {50, 51};
Line(151) = {51, 53};
Line(152) = {53, 52};
Line(153) = {52, 50};



