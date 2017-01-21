color("LightGray") {
    translate([1,1,0]) cube([23,23,4.5]);
    translate([25+1,1,0]) cube([23,23,4.5]);
    translate([1,25+1,0]) cube([23,23,4.5]);
    translate([25+1,25+1,0]) cube([23,23,4.5]);
}
color("Grey") {
    cube([50,50,1]);
    intersection() {
        translate([50+sqrt(10.2*10.2*2)/2,0,0]) rotate([0,0,90+45]) cube([80,10.2,50-6]);
        cube([50,50,50]);
    }
}
