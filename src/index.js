import { cube, cylinder, difference } from "scad-js";

export default function () {
  return difference(
    cylinder(10, 28),
    cylinder(11, 25),
    cube([100, 100, 40]).translate_y(50).debug(),
  );
}
