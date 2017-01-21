color("LightGray") {
    translate([1,1,0]) cube([23,23,9]);
    translate([25+1,1,0]) cube([23,23,9]);
    translate([1,25+1,0]) cube([23,23,9]);
    translate([25+1,25+1,0]) cube([23,23,9]);
}
color("Grey") {
    cube([50,50,6]);
    translate([0,50-10.2,0]) cube([50,10.2,50]);
    translate([50-10.2,0,0]) cube([10.2,50,50]);
}
