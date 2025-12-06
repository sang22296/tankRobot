include <main_chassis.scad>
include <motor_mounts.scad>
include <sprockets.scad>
include <idlers.scad>
include <tracks.scad>
include <battery_tray.scad>
include <camera_mount.scad>
include <ultrasonic_mount.scad>
include <oled_mount.scad>

// Place all components
chassis();

translate([10, 0, 0]) motor_mount();
translate([100, 0, 0]) drive_sprocket();
translate([200, 0, 0]) idler_wheel();
translate([0, 0, 0]) track_link();
translate([50, 10, 5]) battery_tray();
translate([120, 30, 25]) camera_mount();
translate([120, 50, 10]) ultrasonic_mount();
translate([150, 10, 30]) oled_mount();
