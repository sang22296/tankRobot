include <config.scad>;

module idler_wheel(diameter = 50, thickness = 8) {
    // Wheel
    cylinder(h = thickness, r = diameter/2, $fn=100);
    
    // Axle hole
    translate([0,0,-1])
        cylinder(h = thickness+2, r = 4, $fn=32);
}

idler_wheel();
