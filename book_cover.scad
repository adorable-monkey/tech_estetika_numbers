/*
(c) 2020 Creative Common 4.0 Attribution (BY)
https://creativecommons.org/licenses/by/4.0/

!!! For best result set View -> Orthogonal in OpenSCAD !!!

Numbers such as those on te cover of "Technicheskaya estatika" 1989/12
magazine created in 3D for orhtopeojection. They can be substited according to the 
viewing angle. https://issuu.com/0083398/docs/tech_aest_1989_12

OpenSCAD 2019.05
https://github.com/adorable-monkey/tech_estetika_numbers/
*/

include <tech_estetika_numbers.scad>

/* Angel of view from angle 1-30 rather good */
$angle=1;
/* Cube edge length */
//edge=2;

/* Coefficient calculate that height of any cube
 was sqrt(2)/2 under view_angle same as angle of view */
//k=sqrt(2)/2/(cos(90-angle));

/* Change camer view parameters in code */
/* Rotation axis y and z fixed for best result */
$vpr=[$angle,0,45];
/* Translation of camera*/
//$vpt=[0,0,0];
/* Discatans of camera view */
//$vpd=80;

// Like in journal
hspace=6;
vspace=8;
translate([-(vspace+hspace),(vspace-hspace),0]) color("yellow") number_1($edge,$vert_edge_k);
translate([-vspace,vspace,0]) color("yellow") number_2($edge,$vert_edge_k);
translate([-(vspace-hspace),(vspace+hspace),0]) color("green") number_3($edge,$vert_edge_k);

translate([-hspace,-hspace,0]) color("green") number_4($edge,$vert_edge_k);
translate([0,0,0]) color("green") number_5($edge,$vert_edge_k);
translate([hspace,hspace,0]) color("green") number_6($edge,$vert_edge_k);

translate([(vspace-hspace),-(vspace+hspace),0]) color("green") number_7($edge,$vert_edge_k);
translate([vspace,-vspace,0]) color("yellow") number_8($edge,$vert_edge_k);
translate([(vspace+hspace),-(vspace-hspace),0]) color("yellow") number_9($edge,$vert_edge_k);


