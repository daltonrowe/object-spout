$fn = 100;
difference()
{
  cylinder(h = 10, r = 28, center = true);
  cylinder(h = 11, r = 25, center = true);
  #union()
  {
    translate(v = [0, 50, 0])
    {
      cube(size = [100, 100, 40], center = true);
    }
  }
}
