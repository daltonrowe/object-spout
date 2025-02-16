import { cube, cylinder, difference, intersection, sphere, union } from "scad-js";

function connector() {
  return difference(
    union(
      cylinder(2, 28).translate_z(-5),
      cylinder(10, 25),
      cylinder(2, 28).translate_z(5),
    ),
    cylinder(20, 23),
    cube([100, 100, 40]).translate_y(45),
  );
}

function funnel() {
  return intersection(
    difference(
      union(
        cylinder(50, 28),
      ),
      cylinder(60, 25),
      cube([200, 200, 60]).translate_y(95),
    ),
    sphere(50).translate_y(-15).translate_z(-30)
  );
}

export default function () {
  return union(connector(), funnel().translate_z(30));
}
