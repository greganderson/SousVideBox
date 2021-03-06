module plate() {
    translate([65, 0, 70]) {
        rotate([90, 90, 0]) {
            import("Duplex_Standard.stl");
        }
    }
}

module screw_support() {
	cube([7, 7, 70]);
}

module box() {
	difference() {
		difference() {
			difference() {
				difference() {
					difference() {
						cube([130, 130, 70]);
						translate([5, 5, 5]) {
							cube([120, 120, 70]);
						}
					}
					translate([10, 0, 5]) {
						cube([110, 5, 70]);
					}
				}
				translate([120, 35, 15]) {
					color("red") cube([15, 80, 40]);
				}
			}
			translate([125, 17, 35]) {
				rotate([0, 90, 0]) {
					color("green") cylinder(h=10, r1=4, r2=4);
				}
			}
		}
		translate([-5, 40, 20]) {
			power_plug();
		}
	}

	translate([5, 5, 0]) {
		screw_support();
	}

	translate([120, 5, 0]) {
		screw_support();
	}

	translate([120, 120, 0]) {
		screw_support();
	}

	translate([5, 120, 0]) {
		screw_support();
	}
}

module power_plug() {
	difference() {
		difference() {
			cube([15, 45, 30]);
			translate([0, 5, -12]) {
				rotate([45, 0, 0]) {
					color("red") cube([15, 15, 25]);
				}
			}
		}
		translate([0, 30, -2]) {
			rotate([-45, 0, 0]) {
				color("red") cube([15, 15, 25]);
			}
		}
	}
}




union() {
	box();
	plate();
}
