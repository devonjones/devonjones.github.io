color("LightGray") {
    difference () {
        union() {
            translate([1,1,0]) cube([23,23,6+4.5]);
            translate([25+1,1,0]) cube([23,23,6+4.5]);
            translate([1,25+1,0]) cube([23,23,6+4.5]);
            translate([25+1,25+1,0]) cube([23,23,6+4.5]);
        }
        translate([50,0,-1]) rotate([0,0,45]) cube([75,75,50]);
    }
}
color("Grey") {
    difference() {
        cube([50,50,6+1]);
        translate([50,0,-1]) rotate([0,0,45]) cube([75,75,50]);
    }
    intersection() {
        translate([50+sqrt(10.2*10.2*2)/2,0,0]) rotate([0,0,90+45]) cube([80,10.2,50]);
        cube([50,50,50]);
    }
}
