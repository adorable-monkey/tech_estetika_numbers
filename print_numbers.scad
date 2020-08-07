/*
(c) 2020 Creative Common 4.0 Attribution (BY)
https://creativecommons.org/licenses/by/4.0/

!!! For best result set View -> Orthogonal in OpenSCAD !!!

Print custom numbers by variables

Create a 3D objects in stl format. To use special symbols like +-.,:; 
pay attention to the quotes

openscad -o ./result_5_deg.stl -D "\$angle=5" -D "text=\"12:34\"" ./print_numbers.scad

or with command line variables. a - angle of view, text - text with supported symbols.
pay attention to the quotes.

a=5; 
text="12:34";
openscad -o "./result_${a}_deg.stl" -D "\$angle=$a" -D "text=\"${text}\"" ./print_numbers.scad

Make png screenshot. Angle and camera X-axis should be the same for best result.
Attention `$vpr`,`$vpt`,`$vpd` does not work in command line mode instead put data to command line according to the template `--camera=$vpt[0],$vpt[1],$vpt[2],vpr[0],$vpr[1],$vpr[2],$vpd`

a=5; 
text="12:34";
openscad -o "result_${a}_deg.png" \
    -D "\$angle=${a}" \
    -D "text=\"${text}\"" \
    --projection=o \
    --imgsize=256,256 \
    --camera=10,2,0,"${a}",0,45,70 \
    ./print_numbers.scad

OpenSCAD 2019.05
https://github.com/adorable-monkey/tech_estetika_numbers/
*/

// include <numberlib_print.scad>
include <tech_estetika_numbers.scad>
$angle=10;
// Camera configuration
$vpr=[$angle,0,45];
// Text to print
text="12:34";
$edge=1;
$x_axis_space=6;
$y_axis_space=0;
$direction="down";
numbers(str(text),$direction,$x_axis_space,$y_axis_space,$edge,$vert_edge_k);