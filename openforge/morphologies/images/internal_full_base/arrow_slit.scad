
color("LightGray") {
    translate([1,1,0]) cube([23,23,6+4.5]);
    translate([25+1,1,0]) cube([23,23,6+4.5]);
    translate([1,25+1,0]) cube([23,23,6+4.5]);
    translate([25+1,25+1,0]) cube([23,23,6+4.5]);
}
color("Grey") {
    cube([50,50,6+1]);
    difference() {
        translate([0,50-10.2,0]) cube([50,10.2,50]);
        translate([25,52,20]) scale([.6,1,1]) rotate([0,0,180+45]) cube([20,20,25]);
        
    }
}
