
color("LightGray") {
    translate([1,1,0]) cube([23,23,4.5]);
    translate([25+1,1,0]) cube([23,23,4.5]);
    translate([1,25+1,0]) cube([23,23,4.5]);
    translate([25+1,25+1,0]) cube([23,23,4.5]);
}
color("Grey") {
    cube([50,50,1]);
    difference() {
        translate([0,50,0]) cube([50,12.5,50-6]);
        translate([25,25,27]) rotate([-90,0,0]) cylinder(50,15,15);
        translate([10,25,4.51]) cube([30,50,27-4.5]);
    }
}
