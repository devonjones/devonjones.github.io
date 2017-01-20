color("LightGray") {
    translate([1,1,0]) cube([23,23,6+4.5]);
    translate([25+1,1,0]) cube([23,23,6+4.5]);
    translate([1,25+1,0]) cube([23,23,6+4.5]);
    translate([25+1,25+1,0]) cube([23,23,6+4.5]);
}
color("Grey") {
    cube([50,50,7]);
    translate([-12.5,50,0]) cube([50+25,12.5,50]);
    translate([50,0,0]) cube([12.5,50,50]);
    translate([-12.5,0,0]) cube([12.5,50,50]);
}
