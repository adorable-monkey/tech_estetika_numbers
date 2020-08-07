/*
(c) 2020 Creative Common 4.0 Attribution (BY)
https://creativecommons.org/licenses/by/4.0/

!!! For best result set View -> Orthogonal in OpenSCAD !!!

Numbers such as those on the cover of "Technicheskaya estatika" 1989/12 magazine 
created in 3D for orthoprojection. 
https://issuu.com/0083398/docs/tech_aest_1989_12

They can be substituted according to the viewing angle. 
Actually main library

OpenSCAD 2019.05
https://github.com/adorable-monkey/tech_estetika_numbers/
*/

// Angle of view for which the shape of objects will be changed 
// for better view.
$angle=5; 
// size of edge of cube
$edge=1;
// Rotate zero symbol true or false
$zero_rotate=false;
// Direction the change shape of special symbols
// and change space between symbols if not set
// can be "down", "up", "straigh"
$direction="down";
// Calculated by $direction symbole if not set
$x_axis_space=undef; // Space between numbers by x-axis in $edge units
$y_axis_space=undef; // same for y-axis

// Coefficient calculate that height of any cube
// was sqrt(2)/2 under view_$angle same as $angle of view
$vert_edge_base=sqrt(2)/2;
$vert_edge_k=$vert_edge_base/(cos(90-$angle));

// Set parameters of camera view
// $vpr=[$angle,0,45];
// $vpt=[0,0,0];    
// $vpd=80;

// Echo all view parameters
echo($angel=$angle);
echo($edge=$edge);
echo($zero_rotate=$zero_rotate);
echo($direction=$direction);
echo($x_axis_space=$x_axis_space);
echo($y_axis_space=$y_axis_space);
echo($vert_edge_base=$vert_edge_base);
echo($vert_edge_k=$vert_edge_k);
echo($vpr=$vpr);
echo($vpd=$vpd);
echo($vpt=$vpt);

module number_1(c=$edge, k=$vert_edge_k) {
translate([-c,0,0]) cube([c,c,8*k*c]);
translate([-c,-c,8*k*c-k*c]) cube([c,c,k*c]);
}

module number_2(c=$edge, k=$vert_edge_k) {
translate([-c,0,0]) cube([c,2*c,k*c]);
translate([-3*c,0,0]) cube([3*c,c,k*c]);
translate([-3*c,0,0]) cube([c,3*c,k*c]);
translate([-3*c,2*c,0]) cube([c,c,3*k*c]);
translate([-3*c,0,3*k*c]) cube([c,3*c,k*c]);
}

module number_3(c=$edge, k=$vert_edge_k) {
translate([-3*c,0,0]) cube([3*c,c,k*c]);
translate([-c,0,0]) cube([c,c,3*k*c]);
translate([-2*c,0,2*k*c]) cube([2*c,c,k*c]);
translate([-2*c,0,2*k*c]) cube([c,3*c,k*c]);
translate([-2*c,2*c,2*k*c]) cube([c,c,3*k*c]);
translate([-2*c,0,3*k*c+k*c]) cube([c,3*c,k*c]);
}

module number_4(c=$edge, k=$vert_edge_k) {
translate([-0.5*c,0.5*c,0]) {
translate([-c,c,0]) cube([c,c,4*k*c]);
translate([-3*c,c,0]) cube([c,c,4*k*c]);
translate([-3*c,c,0]) cube([4*c,c,k*c]);
translate([-c,-c,0]) cube([c,3*c,k*c]);
}
}

module number_5(c=$edge, k=$vert_edge_k) {
translate([-0.5*c,0.5*c,0]){
translate([-3*c,c,3*k*c-k*c]) cube([c,2*c,k*c]);
translate([-3*c,c,0]) cube([c,c,3*k*c]);
translate([-3*c,c,0]) cube([3*c,c,k*c]);
translate([-c,-c,0]) cube([c,3*c,k*c]);
translate([-2*c,-c,0]) cube([2*c,c,k*c]);
}
}

module number_6(c=$edge, k=$vert_edge_k) {
translate([-3*c,2*c,0]) cube([3*c,c,k*c]);
translate([-c,0,0]) cube([c,3*c,k*c]);
translate([-2*c,0,0]) cube([2*c,c,k*c]);
translate([-3*c,0,0]) cube([c,c,5*k*c]);
translate([-3*c,0,5*k*c-k*c]) cube([c,2*c,k*c]);
translate([-3*c,0,0]) cube([c,3*c,k*c]);
}

module number_7(c=$edge, k=$vert_edge_k) {
translate([-3*c,0,0]) cube([3*c,c,k*c]);
translate([-3*c,0,0]) cube([c,3*c,k*c]);
translate([-3*c,2*c,0]) cube([c,c,4*k*c]);
translate([-3*c,0,4*k*c-k*c]) cube([c,2*c,k*c]);
}

module number_8(c=$edge, k=$vert_edge_k) {
translate([-3*c,0,0]) cube([3*c,c,k*c]);
translate([-c,0,0]) cube([c,3*c,k*c]);
translate([-3*c,2*c,0]) cube([3*c,c,k*c]);
translate([-3*c,c,0]) cube([c,c,2*k*c+k*c]);
translate([-3*c,c,2*k*c]) cube([c,3*c,k*c]);
translate([-3*c,3*c,0]) cube([c,c,2*k*c+k*c]);
}

module number_9(c=$edge, k=$vert_edge_k) {
translate([-c,0,0]) cube([c,3*c,k*c]);
translate([-2*c,0,0]) cube([2*c,c,k*c]);
translate([-3*c,2*c,0]) cube([3*c,c,k*c]);
translate([-3*c,2*c,0]) cube([c,c,3*k*c+k*c]);
translate([-3*c,2*c,3*k*c]) cube([3*c,c,k*c]);
translate([-c,2*c,0]) cube([c,c,3*k*c+k*c]);
}

module number_0(c=$edge, k=$vert_edge_k, rotate=$zero_rotate) {
    if (rotate == true) {
        translate([-3*c,0,0]) cube([3*c,c,k*c]);
        translate([-c,0,0]) cube([c,3*c,k*c]);
        translate([-3*c,2*c,0]) cube([3*c,c,k*c]);
        translate([-3*c,0,0]) cube([c,c,3*k*c+k*c]);
        translate([-3*c,0,3*k*c]) cube([c,3*c,k*c]);
        translate([-3*c,2*c,0]) cube([c,c,3*k*c+k*c]);
    } else {
        translate([-3*c,0,0]) cube([3*c,c,k*c]);
        translate([-c,0,0]) cube([c,3*c,k*c]);
        translate([-3*c,2*c,3*k*c]) cube([3*c,c,k*c]);
        translate([-c,2*c,0]) cube([c,c,3*k*c+k*c]);
        translate([-3*c,0,0]) cube([c,3*c,k*c]);
        translate([-3*c,2*c,0]) cube([c,c,3*k*c+k*c]);
    }
}

module dot(c=$edge, k=$vert_edge_k,direction=$direction) {
    if (direction == "up") {
        translate([-c,c,0]) cube([c,c,k*c]);
    }
    else if (direction == "straight") {
        translate([-c,0,0]) cube([c,c,k*c]);
    }
    else if ((direction == "down") || (direction != undef)) {
        translate([-2*c,0,0]) cube([c,c,k*c]);
    }
}

module colon(c=$edge, k=$vert_edge_k, direction=$direction) {
    if (direction == "up") {
        translate([-3*c,c,0]) cube([c,c,k*c]);
        translate([-1*c,c,0]) cube([c,c,k*c]);
    }
    else if (direction == "straight") {
        translate([-c,0,0]) cube([c,c,k*c]);
        translate([-3*c,2*c,0]) cube([c,c,k*c]);
    }
    else if ((direction == "down") || (direction != undef)) {
        translate([-2*c,0,0]) cube([c,c,k*c]);
        translate([-2*c,2*c,0]) cube([c,c,k*c]);
    }
}

module comma(c=$edge, k=$vert_edge_k, direction=$direction) {
    if (direction == "up") {
        translate([-c,c,0]) cube([c,c,k*c]);
        translate([0*c,1.5*c,0]) cube([c/2,c/2,k*c]);
    }
    else if (direction == "straight") {
        translate([-c,0*c,0]) cube([c,c,k*c]);
        translate([-0.5*c,-0.5*c,0]) cube([c/2,c/2,k*c]);
    }
    else if ((direction == "down") || (direction != undef)) {
        translate([-2*c,0*c,0]) cube([c,c,k*c]);
        translate([-1.5*c,-0.5*c,0]) cube([c/2,c/2,k*c]);
    }
}

module semicolon(c=$edge, k=$vert_edge_k, direction=$direction) {
    if (direction == "up") {
        translate([-3*c,c,0]) cube([c,c,k*c]);
        translate([-1*c,c,0]) cube([c,c,k*c]);
        translate([0,1.5*c,0]) cube([c/2,c/2,k*c]);
    }
    else if (direction == "straight") {
        translate([-c,0,0]) cube([c,c,k*c]);
        translate([-3*c,2*c,0]) cube([c,c,k*c]);
        translate([-0.5*c,-0.5*c,0]) cube([c/2,c/2,k*c]);
    }
    else if ((direction == "down") || (direction != undef)) {                     
        translate([-2*c,0,0]) cube([c,c,k*c]);
        translate([-2*c,2*c,0]) cube([c,c,k*c]);
        translate([-1.5*c,-0.5*c,0]) cube([c/2,c/2,k*c]);
    }
}

module plus(c=$edge,k=$vert_edge_k, direction=$direction) {
    if (direction == "up") {
        translate([-2*c,0,0]) cube([c,3*c,k*c]);
        translate([-3*c,c,0]) cube([3*c,c,k*c]);
    }
    else if (direction == "straight") {
        translate([-3*c,0,0]) cube([c,c,k*c]);
        translate([-2*c,c,0]) cube([c,c,k*c]);
        translate([-1*c,2*c,0]) cube([c,c,k*c]);
        translate([-1*c,0,0]) cube([c,c,k*c]);
        translate([-3*c,2*c,0]) cube([c,c,k*c]);
    }
    else if ((direction == "down") || (direction != undef)) {
        translate([-2*c,0,0]) cube([c,3*c,k*c]);
        translate([-3*c,c,0]) cube([3*c,c,k*c]);
    }
}

module minus(c=$edge,k=$vert_edge_k, direction=$direction) {
    if (direction == "up") {
        translate([-2*c,0,0]) cube([c,3*c,k*c]);
    }
    else if (direction == "straight") {
        translate([-3*c,0,0]) cube([c,c,k*c]);
        translate([-2*c,c,0]) cube([c,c,k*c]);
        translate([-1*c,2*c,0]) cube([c,c,k*c]);
    }
    else if ((direction == "down") || (direction != undef))  {
        translate([-3*c,c,0]) cube([3*c,c,k*c]);
    } 
}

module numbers(number_text,
    direction=$direction,
    x_axis_space=$x_axis_space,
    y_axis_space=$y_axis_space,
    edge=$edge,
    vert_edge_k=$vert_edge_k
) {
x_axis_space_default=6;
y_axis_space_default=0;
x_axis_space = (x_axis_space == undef ? (direction == "down" ? x_axis_space_default : (
    direction == "up" ? 0 : (
        direction == "straight" ? 4 : x_axis_space_default
    )
    )) : x_axis_space);
y_axis_space =  (y_axis_space == undef ? (direction == "down" ? y_axis_space_default : (
    direction == "up" ? 6 : (
        direction == "straight" ? 4 : y_axis_space_default
    )
)) : y_axis_space);
n = len(number_text);
for (x=[0:1:n]) {
    print_n = str(number_text[x]);
    translate([x*x_axis_space*edge,x*y_axis_space*edge,0]) {
        if (print_n == "1"){
            number_1(edge,vert_edge_k);
            }
        else if (print_n == "2"){
            number_2(edge,vert_edge_k);
            }
        else if (print_n == "3"){
            number_3(edge,vert_edge_k);
            }
        else if (print_n == "4"){
            number_4(edge,vert_edge_k);
            }
        else if (print_n == "5"){
            number_5(edge,vert_edge_k);
            }
        else if (print_n == "6"){
            number_6(edge,vert_edge_k);
            }
        else if (print_n == "7"){
            number_7(edge,vert_edge_k);
            }
        else if (print_n == "8"){
            number_8(edge,vert_edge_k);
            }
        else if (print_n == "9"){
            number_9(edge,vert_edge_k);
            }
        else if (print_n == "0"){
            number_0(edge,vert_edge_k,$zero_rotate);
            }
        else if (print_n == ":"){
            colon(edge,vert_edge_k,direction);
            }
        else if (print_n == ";"){
            semicolon(edge,vert_edge_k,direction);
        }
        else if (print_n == "."){
            dot(edge,vert_edge_k, direction);
            }
        else if (print_n == ","){
            comma(edge,vert_edge_k,direction);
            }
        else if (print_n == "+"){
            plus(edge,vert_edge_k,direction);
            }
        else if (print_n == "-"){
            minus(edge,vert_edge_k,direction);
            }
        }
    }
}

