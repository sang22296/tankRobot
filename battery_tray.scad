include <config.scad>;

module battery_tray() {
    margin = 2;
    cube([battery_length + margin*2,
          battery_width + margin*2,
          battery_height + margin]);

    // Cutout for sliding in batteries
    translate([margin, margin, 0])
        cube([battery_length, battery_width, battery_height]);
}

battery_tray();
