_basis = 25;

module arched_door_hole(x=2, y=2, border=0, base=false) {
    base_buffer = base ? 6 : 0;
    if (x < 3) {
        color("DarkGrey") {
            difference() {
                children(0);
                translate([0,-2.5-10.2+_basis*y,base_buffer]) union() {
                    translate([8-border,-13.4,0]) cube([34+border*2,22+border,24]);
                    translate([_basis,8.6+border,23]) rotate([90,0,0]) cylinder(22+border,17+border,17+border,$fn=100);
                    translate([10-border,1.2,0]) cube([30+border*2,22.1,24]);
                    intersection() {
                        translate([10-border,1.2,0]) cube([30+border*2,22.1,50]);
                        translate([_basis,23.3,29.5-6.5]) rotate([90,0,0]) cylinder(22.1,17+border,17+border,$fn=100);
                    }
                    translate([8-border,-1.4,0]) cube([30+border,12+border,24]);
                    intersection() {
                        translate([8-border,-1.4,0]) cube([30+border,12+border,50]);
                        translate([_basis,10.6+border,23]) rotate([90,0,0]) cylinder(12+border,17+border,17+border,$fn=100);
                    }
                    translate([11,6.7,.3]) cylinder(50,1,1,$fn=25);
                }
            }
        }
        difference() {
            children(1);
            translate([0,-2.5-10.2+_basis*y,base_buffer]) color("DarkGrey") translate([11,6.7,3]) cylinder(50,1,1,$fn=25);
        }
    } else {
        move = (x-2) * 12.5;
        color("DarkGrey") difference() {
            children(0);
            translate([move,-2.5-10.2+_basis*y,base_buffer]) translate([-25,3,10.5-6]) union() {
                translate([12+_basis/2-border,-16.4,-4]) cube([51+border*2,24+border,24]);
                translate([_basis*2,7.6+border,19]) rotate([90,0,0]) scale([1.5,1,1]) cylinder(24+border,17+border/1.5,17+border/1.5,$fn=100);
                translate([14+12.7-border,-1.8,-4]) cube([47+border*2,22.1,24]);
                intersection() {
                    translate([14+12.7-border,-1.8,-4]) cube([47+border*2,22.1,50]);
                    translate([_basis*2,20.3,19]) rotate([90,0,0]) scale([1.5,1,1]) cylinder(22.1,17+border/1.5,17+border/1.5,$fn=100);
                }
                translate([15+12.5,3.7,-3.7]) cylinder(50,1,1,$fn=25);
                translate([60+12.5,3.7,-3.7]) cylinder(50,1,1,$fn=25);
            }
        }
        difference() {
            children(1);
            translate([move,-2.5-10.2+_basis*y,base_buffer]) color("DarkGrey") translate([15-12.5,6.7,.3]) cylinder(50,1,1,$fn=25);
            translate([move,-2.5-10.2+_basis*y,base_buffer]) color("DarkGrey") translate([60-12.5,6.7,.3]) cylinder(50,1,1,$fn=25);
        }
    }
}

module arched_door(x=2, y=2, base=false) {
    h = 2;
    base_buffer = base ? 6 : 0;
    
    arched_door_hole(x=x, y=y, base=base) {
        color("Grey") {
            cube([_basis*x,_basis*y,1+base_buffer]);
            translate([0,_basis*y-10.2,0]) cube([_basis*x,10.2,_basis*h-6+base_buffer]);
        }
        union() {
            color("Grey") cube([_basis*x,_basis*y,1+base_buffer]);
            translate([0,0,base_buffer]) color("LightGray") {
                for (i = [0:x-1]) {
                    for (j = [0:y-1]) {
                        translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
                    }
                }
            }
        }
    }
}

arched_door(x=2, y=2, base=false);
