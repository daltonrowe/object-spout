import {
  cube,
  cylinder,
  difference,
  intersection,
  sphere,
  union,
} from "scad-js";

function connector() {
  return difference(
    union(
      cylinder(2, 28).translate_z(-5),
      cylinder(10, 25),
      cylinder(2, 28).translate_z(5),
    ),
    cylinder(20, 18),
    cube([100, 100, 40]).translate_y(45),
  );
}

function funnel() {
  return intersection(
    difference(
      union(cylinder(80, 28)).translate_z(20),
      cylinder(90, 25),
      cube([200, 200, 100]).translate_y(95),
    ),
    sphere(50).translate_y(-15).translate_z(-10),
  ).translate_z(-5);
}

export default function () {
  return difference(
    union(connector(), funnel().translate_z(30)),
    cylinder(50, 25).debug().rotate_x(-20).translate_y(7),
  );
}
