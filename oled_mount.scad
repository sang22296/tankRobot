include <config.scad>;

module oled_mount() {
    width = 40;
    height = 20;
    thickness = 3;

    cube([width, thickness, height]);

    // Cutout for screen
    translate([2, 0, 2])
        cube([width-4, thickness, height-4]);
}

oled_mount();
