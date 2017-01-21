//translate([0,0,0]) color("LightGray") square([25,25],false);
//translate([25,0,0]) color("LightGray") square([25,25],false);
//translate([0,25,0]) color("LightGray") square([25,25],false);
//translate([25,25,0]) color("LightGray") square([25,25],false);

scale([2,2,2]) {
    //translate([0,50,0]) color("Gray") square([50,12.5],false);
    //translate([50,0,0]) color("Gray") square([12.5,50],false);
}

color("LightGray") {
    intersection () {
        union() {
            translate([1,1,0]) cube([23,23,4.5]);
            translate([25+1,1,0]) cube([23,23,4.5]);
            translate([1,25+1,0]) cube([23,23,4.5]);
            translate([25+1,25+1,0]) cube([23,23,4.5]);
        }
        cylinder(50,50-10.2,50-10.2);
    }
}
color("Grey") {
    intersection() {
        cube([50,50,1]);
        cylinder(50,50-10.2,50-10.2);
    }
    intersection() {
        difference() {
            cylinder(50-6,50,50);
            cylinder(50,50-10.2,50-10.2);
        }
        cube([50,50,50]);
    }
}
