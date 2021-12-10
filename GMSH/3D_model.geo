// Gmsh project created on Wed Dec8 12:05 2021
SetFactory("OpenCASCADE");

// BASE PIECE

// base rectangle
Point(1010) = {0, 0, 0};
Point(1011) = {0, 7, 0};
Point(1012) = {10, 7, 0};
Point(1013) = {10, 0, 0};

Line(10110) = {1010, 1011};
Line(10111) = {1011, 1012};
Line(10112) = {1012, 1013};
Line(10113) = {1013, 1010};

// holes for vertical structure
// left hole
Point(1020) = {0.3, 2.5, 0}; 
Point(1021) = {0.3, 4.5, 0};
Point(1022) = {0.8, 2.5, 0}; 
Point(1023) = {0.8, 4.5, 0};

Line(10120) = {1020, 1021};
Line(10121) = {1021, 1023};
Line(10122) = {1023, 1022};
Line(10123) = {1022, 1020};

// right hole
Point(1030) = {9.2, 2.5, 0};
Point(1031) = {9.2, 4.5, 0};
Point(1032) = {9.7, 2.5, 0};
Point(1033) = {9.7, 4.5, 0};

Line(10130) = {1030, 1031};
Line(10131) = {1031, 1033};
Line(10132) = {1033, 1032};
Line(10133) = {1032, 1030};


// holes for the motors
// left hole
Point(1040) = {0.5 + 1, 3, 0};
Point(1041) = {0.5 + 1, 4, 0};
Point(1042) = {1 + 1, 3, 0};
Point(1043) = {1+ 1, 4, 0};

Line(10140) = {1040, 1041};
Line(10141) = {1041, 1043};
Line(10142) = {1043, 1042};
Line(10143) = {1042, 1040};

// right hole
Point(1050) = {9 - 1, 3, 0};
Point(1051) = {9 - 1, 4, 0};
Point(1052) = {9.5 - 1, 3, 0};
Point(1053) = {9.5 - 1, 4, 0};

Line(10150) = {1050, 1051};
Line(10151) = {1051, 1053};
Line(10152) = {1053, 1052};
Line(10153) = {1052, 1050};


Physical Curve(10154) = {10110, 10111, 10112, 10113};
Physical Curve(10155) = {10121, 10122, 10120, 10123};
Physical Curve(10156) = {10140, 10141, 10142, 10143};
Physical Curve(10157) = {10150, 10151, 10152, 10153};
Physical Curve(10158) = {10130, 10131, 10132, 10133};
Curve Loop(1) = {10111, 10112, 10113, 10110};
Curve Loop(2) = {10122, 10123, 10120, 10121};
Curve Loop(3) = {10141, 10142, 10143, 10140};
Curve Loop(4) = {10152, 10153, 10150, 10151};
Curve Loop(5) = {10130, 10131, 10132, 10133};
Plane Surface(1) = {1, 2, 3, 4, 5};
Physical Surface(10159) = {1};
Extrude {0, 0, -0.5} {
  Surface{1}; 
}



// MIDDLE PIECE
offset_x = 0.1;
middle_z = 6.75;

height = 8.4;
Point(201) = {     0 + 0.7 + offset_x, 0, middle_z};
Point(202) = {height + 0.7 + offset_x, 0, middle_z};
Point(203) = {     0 + 0.7 + offset_x, 7, middle_z};
Point(204) = {height + 0.7 + offset_x, 7, middle_z};

Point(2021) = {0.7 + offset_x, 2.5, middle_z};
Point(2022) = {0.7 + offset_x, 4.5, middle_z};
Point(2023) = {  0 + offset_x, 2.5, middle_z};
Point(2024) = {  0 + offset_x, 4.5, middle_z};

Point(2031) = {      height + 0.7 + offset_x, 2.5, middle_z};
Point(2032) = {      height + 0.7 + offset_x, 4.5, middle_z};
Point(2033) = {height + 0.7 + 0.7 + offset_x, 2.5, middle_z};
Point(2034) = {height + 0.7 + 0.7 + offset_x, 4.5, middle_z};

Line(201) = {201, 202};
Line(202) = {202, 2031};
Line(203) = {2031, 2033};
Line(204) = {2033, 2034};
Line(205) = {2034, 2032};
Line(206) = {2032, 204};
Line(207) = {204, 203};
Line(208) = {203, 2022};
Line(209) = {2022, 2024};
Line(2010) = {2024, 2023};
Line(2011) = {2023, 2021};
Line(2012) = {2021, 201};

Physical Curve(10194) = {2010, 209, 208, 207, 206, 205, 204, 203, 202, 201, 2012, 2011};
Curve Loop(31) = {207, 208, 209, 2010, 2011, 2012, 201, 202, 203, 204, 205, 206};
Plane Surface(23) = {31};
Physical Surface(10195) = {23};

Extrude {0, 0, +0.5} {
  Surface{23}; 
}




// TOP PIECE
top_z = 14;

// base rectangle
Point(3010) = {0, 0, top_z};
Point(3011) = {0, 7, top_z};
Point(3012) = {10, 7, top_z};
Point(3013) = {10, 0, top_z};

Line(30110) = {3010, 3011};
Line(30111) = {3011, 3012};
Line(30112) = {3012, 3013};
Line(30113) = {3013, 3010};

// holes for vertical structure
// left hole
Point(3020) = {0.3, 2.5, top_z}; 
Point(3021) = {0.3, 4.5, top_z};
Point(3022) = {0.8, 2.5, top_z}; 
Point(3023) = {0.8, 4.5, top_z};

Line(30120) = {3020, 3021};
Line(30121) = {3021, 3023};
Line(30122) = {3023, 3022};
Line(30123) = {3022, 3020};

// right hole
Point(3030) = {9.2, 2.5, top_z};
Point(3031) = {9.2, 4.5, top_z};
Point(3032) = {9.7, 2.5, top_z};
Point(3033) = {9.7, 4.5, top_z};

Line(30130) = {3030, 3031};
Line(30131) = {3031, 3033};
Line(30132) = {3033, 3032};
Line(30133) = {3032, 3030};

// outer
Physical Curve(30134) = {30110, 30111, 30112, 30113};
// left hole
Physical Curve(30135) = {30123, 30120, 30121, 30122};
// right hole
Physical Curve(30136) = {30130, 30131, 30132, 30133};

Curve Loop(301) = {30110, 30111, 30112, 30113};
Curve Loop(302) = {30121, 30122, 30123, 30120};
Curve Loop(303) = {30131, 30132, 30133, 30130};

Plane Surface(301) = {301, 302, 303};
Physical Surface(30137) = {301};
//+
Extrude {0, 0, 0.5} {
  Surface{301}; 
}



// VERTICAL PIECE LEFT
x_vertical_offset_left = 0.8;

Point(4010) = {0 + x_vertical_offset_left, 0,  0};
Point(4011) = {0 + x_vertical_offset_left, 0, 14};
Point(4012) = {0 + x_vertical_offset_left, 7, 14};
Point(4013) = {0 + x_vertical_offset_left, 7,  0};

Point(4020) = {0 + x_vertical_offset_left, 2.5, -0.7};
Point(4021) = {0 + x_vertical_offset_left, 2.5,    0};
Point(4022) = {0 + x_vertical_offset_left, 4.5, -0.7};
Point(4023) = {0 + x_vertical_offset_left, 4.5,    0};

Point(4030) = {0 + x_vertical_offset_left, 2.5, 6.75};
Point(4031) = {0 + x_vertical_offset_left, 2.5, 7.25}; 
Point(4032) = {0 + x_vertical_offset_left, 4.5, 6.75};
Point(4033) = {0 + x_vertical_offset_left, 4.5, 7.25};

Point(4040) = {0 + x_vertical_offset_left, 2.5,   14};
Point(4041) = {0 + x_vertical_offset_left, 2.5, 14.7};
Point(4042) = {0 + x_vertical_offset_left, 4.5,   14};
Point(4043) = {0 + x_vertical_offset_left, 4.5, 14.7};


Line(401)  = {4010, 4011};
Line(402)  = {4011, 4040};
Line(403)  = {4040, 4041};
Line(404)  = {4041, 4043};
Line(405)  = {4043, 4042};
Line(406)  = {4042, 4012};
Line(407)  = {4012, 4013};
Line(408)  = {4013, 4023};
Line(409)  = {4023, 4022};
Line(4010) = {4022, 4020};
Line(4011) = {4020, 4021};
Line(4012) = {4021, 4010};
Line(4013) = {4030, 4031};
Line(4014) = {4031, 4033};
Line(4015) = {4033, 4032};
Line(4016) = {4032, 4030};


Physical Curve(4017) = {4010, 409, 408, 407, 406, 405, 404, 403, 402, 401, 4012, 4011};
Physical Curve(4018) = {4016, 4015, 4014, 4013};
Curve Loop(401) = {407, 408, 409, 4010, 4011, 4012, 401, 402, 403, 404, 405, 406};
Curve Loop(402) = {4016, 4013, 4014, 4015};
Plane Surface(401) = {401, 402};
Physical Surface(4019) = {401};
Extrude {-0.5, 0, 0} {
  Surface{401}; 
}


// VERTICAL PIECE RIGHT
x_vertical_offset_left = 9.2;

Point(5010) = {0 + x_vertical_offset_left, 0,  0};
Point(5011) = {0 + x_vertical_offset_left, 0, 14};
Point(5012) = {0 + x_vertical_offset_left, 7, 14};
Point(5013) = {0 + x_vertical_offset_left, 7,  0};

Point(5020) = {0 + x_vertical_offset_left, 2.5, -0.7};
Point(5021) = {0 + x_vertical_offset_left, 2.5,    0};
Point(5022) = {0 + x_vertical_offset_left, 4.5, -0.7};
Point(5023) = {0 + x_vertical_offset_left, 4.5,    0};

Point(5030) = {0 + x_vertical_offset_left, 2.5, 6.75};
Point(5031) = {0 + x_vertical_offset_left, 2.5, 7.25}; 
Point(5032) = {0 + x_vertical_offset_left, 4.5, 6.75};
Point(5033) = {0 + x_vertical_offset_left, 4.5, 7.25};

Point(5040) = {0 + x_vertical_offset_left, 2.5,   14};
Point(5041) = {0 + x_vertical_offset_left, 2.5, 14.7};
Point(5042) = {0 + x_vertical_offset_left, 4.5,   14};
Point(5043) = {0 + x_vertical_offset_left, 4.5, 14.7};


Line(501)  = {5010, 5011};
Line(502)  = {5011, 5040};
Line(503)  = {5040, 5041};
Line(504)  = {5041, 5043};
Line(505)  = {5043, 5042};
Line(506)  = {5042, 5012};
Line(507)  = {5012, 5013};
Line(508)  = {5013, 5023};
Line(509)  = {5023, 5022};
Line(5010) = {5022, 5020};
Line(5011) = {5020, 5021};
Line(5012) = {5021, 5010};
Line(5013) = {5030, 5031};
Line(5014) = {5031, 5033};
Line(5015) = {5033, 5032};
Line(5016) = {5032, 5030};


Physical Curve(5017) = {5010, 509, 508, 507, 506, 505, 504, 503, 502, 501, 5012, 5011};
Physical Curve(5018) = {5016, 5015, 5014, 5013};
Curve Loop(501) = {507, 508, 509, 5010, 5011, 5012, 501, 502, 503, 504, 505, 506};
Curve Loop(502) = {5016, 5013, 5014, 5015};
Plane Surface(501) = {501, 502};
Physical Surface(5019) = {501};
Extrude {0.5, 0, 0} {
  Surface{501}; 
}
