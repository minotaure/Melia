// Gmsh project created on Thu Nov 30 17h44 2021

SetFactory("OpenCASCADE");

Point(10) = {0, 0, 0};
Point(11) = {1, 0, 0};
Point(12) = {0, 7, 0};
Point(13) = {1, 7, 0};

Line(110) = {10, 12};
Line(111) = {12, 13};
Line(112) = {13, 11};
Line(113) = {11, 10};



Point(20) = {0.25, 6, 0};
Point(21) = {0.75, 6, 0};
Point(22) = {0.25, 6.45, 0};
Point(23) = {0.75, 6.45, 0};


Line(120) = {20, 22};
Line(121) = {22, 23};
Line(122) = {23, 21};
Line(123) = {21, 20};



Point(30) = {0.25, 5 + 0.05, 0}; // y_max : 5.55
Point(31) = {0.75, 5 + 0.05, 0};
Point(32) = {0.25, 5 + 0.5, 0};
Point(33) = {0.75, 5 + 0.5, 0};


Line(130) = {30, 32};
Line(131) = {32, 33};
Line(132) = {33, 31};
Line(133) = {31, 30};


// trous de fixation
Circle(140) = {0.25, 0.5, 0, 0.1, 0, 2*Pi};
Circle(141) = {0.75, 0.5, 0, 0.1, 0, 2*Pi};
Circle(142) = {0.25,   1, 0, 0.1, 0, 2*Pi};
Circle(143) = {0.75,   1, 0, 0.1, 0, 2*Pi};
Circle(144) = {0.25, 1.5, 0, 0.1, 0, 2*Pi};
Circle(145) = {0.75, 1.5, 0, 0.1, 0, 2*Pi};
Circle(146) = {0.25,   2, 0, 0.1, 0, 2*Pi};
Circle(147) = {0.75,   2, 0, 0.1, 0, 2*Pi};
Circle(148) = {0.25, 2.5, 0, 0.1, 0, 2*Pi};
Circle(149) = {0.75, 2.5, 0, 0.1, 0, 2*Pi};
Circle(150) = {0.25,   3, 0, 0.1, 0, 2*Pi};
Circle(151) = {0.75,   3, 0, 0.1, 0, 2*Pi};
Circle(152) = {0.25, 3.5, 0, 0.1, 0, 2*Pi};
Circle(153) = {0.75, 3.5, 0, 0.1, 0, 2*Pi};
