color("LightGray") {
    translate([1,1,0]) cube([23,23,4.5]);
    translate([25+1,1,0]) cube([23,23,4.5]);
}
color("Grey") {
    cube([50,25,1]);
    translate([0,25,0]) cube([50-12.5,12.5,50-6]);
}
