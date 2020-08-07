/*
(c) 2020 Creative Common 4.0 Attribution (BY)
https://creativecommons.org/licenses/by/4.0/

!!! For best result set View -> Orthogonal in OpenSCAD !!!

Draw all possible symbols in three directions.

OpenSCAD 2019.05
https://github.com/adorable-monkey/tech_estetika_numbers/
*/

include <tech_estetika_numbers.scad>
$angle=10;

// Camera configuration
$vpr=[$angle,0,45];

// Text to print
numbers("+-1234567890:;.,","down",$x_axis_space,$y_axis_space,$edge,$vert_edge_k);
numbers("+-1234567890;.,","up",$x_axis_space,$y_axis_space,$edge,$vert_edge_k);
numbers(" +-1234567890:;.,","straight",$x_axis_space,$y_axis_space,$edge,$vert_edge_k);

