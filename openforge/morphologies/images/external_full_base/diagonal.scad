color("LightGray") {
    intersection() {
        union() {
            translate([1,1,0]) cube([23,23,6+4.5]);
            translate([25+1,1,0]) cube([23,23,6+4.5]);
            translate([1,25+1,0]) cube([23,23,6+4.5]);
            translate([25+1,25+1,0]) cube([23,23,6+4.5]);
        }
        translate([50,0,0]) rotate([0,0,90+45]) cube([75,75,75]);
    }
}

color("Grey") {
    intersection() {
        cube([50,50,7]);
        translate([50,0,0]) rotate([0,0,90+45]) cube([75,75,75]);
    }
    intersection() {
        translate([50,0,0]) rotate([0,0,45]) cube([12.5,75,50]);
        cube([50,50,50]);
    }
}
