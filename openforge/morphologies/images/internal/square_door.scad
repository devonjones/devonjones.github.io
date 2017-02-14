_basis = 25;

module square_door_hole(x=2, y=2, border=0, base=false) {
    base_buffer = base ? 6 : 0;
    if (x < 3) {
        color("DarkGrey") difference() {
            children(0);
            
            translate([0,-2.5-10.2+_basis*y,base_buffer]) union() {
                translate([_basis-29/2,-_basis/2-6,0]) cube([29,_basis+3,51.2]);
                translate([_basis-33/2,-_basis/2-2,_basis*2-6-4.1]) cube([33,_basis+3,4.2]);
                translate([_basis-25/2,-1,0]) cube([25,18.7,51.2]);
            }
        }
        difference() {
            children(1);
            translate([0,-2.5-10.2+_basis*y,base_buffer]) color("DarkGrey") translate([_basis/2+1.7,6.2,1]) cylinder(50,1,1,$fn=25);
            translate([0,-2.5-10.2+_basis*y,base_buffer]) color("DarkGrey") translate([2*_basis-(_basis/2+1.7),6.2,1]) cylinder(50,1,1,$fn=25);
        }
    } else {
        move = (x-2) * 12.5;
        color("DarkGrey") difference() {
            children(0);
            translate([-move,-2.5-10.2+_basis*y,base_buffer]) union() {
                translate([_basis*2-(29+28)/2,-_basis/2-6,0]) cube([29+28,_basis+3,51.2]);
                translate([_basis*2-(33+28)/2,-_basis/2-2,_basis*2-4.7+1.6]) cube([33+28,_basis+3,4.2]);
                translate([_basis*2-(25+28)/2,-1,0]) cube([25+28,18.7,51.2]);
            }
        }
        difference() {
            children(1);
            translate([-move,-2.5-10.2+_basis*y,base_buffer]) color("DarkGrey") translate([_basis+0.4,6.2,1]) cylinder(50,1,1,$fn=25);
            translate([-move,-2.5-10.2+_basis*y,base_buffer]) color("DarkGrey") translate([3*_basis-0.4,6.2,1]) cylinder(50,1,1,$fn=25);
        }
    }
}

module square_door(x=2, y=2, base=false) {
    h = 2;
    base_buffer = base ? 6 : 0;
    
    square_door_hole(x=x, y=y, base=base) {
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

module construction_kit_wall_square_door(x=2, y=2) {
    difference() {
        square_door(x=x, y=y);
        color("Grey") translate([-1,-1,-1]) cube([_basis*x+2,_basis*y-10.2+1,6.5]);
    }
}

module construction_kit_corner_square_door(x=2, y=2) {
    h=2;
    translate([10.2/2,0,0]) difference() {
        square_door(x=x, y=y);
        color("Grey") translate([-1,-1,-1]) cube([_basis*x+2,_basis*y-10.2+1,6.5]);
        color("Grey") translate([-1,-1,-1]) cube([10.2/2+1,_basis*y+2,_basis*h+2]);
        color("Grey") translate([_basis*x-10.2/2,-1,-1]) cube([10.2/2+1,_basis*y+2,_basis*h+2]);
    }
}

//square_door(x=2, y=2, base=false);
//construction_kit_wall_square_door(x=2, y=2);
//construction_kit_corner_square_door(x=2, y=2);

