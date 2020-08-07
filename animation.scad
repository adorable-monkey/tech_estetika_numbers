/*
(c) 2020 Creative Common 4.0 Attribution (BY)
https://creativecommons.org/licenses/by/4.0/

!!! For best result set View -> Orthogonal in OpenSCAD !!!

To run animation View->Animate than input in FPS input area 25 and in Steps 100
Animation show how objects can be changed depending on view angle.

OpenSCAD 2019.05
https://github.com/adorable-monkey/tech_estetika_numbers/
*/

include <tech_estetika_numbers.scad>
// Change in time from 1 to 45 degree
$angle=1+44/2+44/2*sin(360*$t);
// Text information rotate to view in viewport
translate([0,15,0]) rotate($vpr) text(str("view_angle=",round($vpr[0]), " deg"));
translate([15,15,-20]) rotate($vpr) text(str("angle=", round($angle), " deg"));
// Numbers to print
color("green") numbers("123","down",6,0,$edge,$vert_edge_k);
$vpr=[20,0,45];
// Rotate camera to follow best view
//$vpr=[$angle,0,45];
// Fixed object to view compression of it
color("yellow") {
translate([-5,-2,-2]) cube([21,6,2]);
translate([-5,-2,-32]) cube([2,6,60]);
translate([-5,-14,-2]) cube([2,30,2]);
}