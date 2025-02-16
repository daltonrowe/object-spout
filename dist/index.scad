$fn = 100;
union()
{
  difference()
  {
    union()
    {
      translate(v = [0, 0, -5])
      {
        cylinder(h = 2, r = 28, center = true);
      }
      cylinder(h = 10, r = 25, center = true);
      translate(v = [0, 0, 5])
      {
        cylinder(h = 2, r = 28, center = true);
      }
    }
    cylinder(h = 20, r = 23, center = true);
    translate(v = [0, 45, 0])
    {
      cube(size = [100, 100, 40], center = true);
    }
  }
  translate(v = [0, 0, 30])
  {
    intersection()
    {
      difference()
      {
        union()
        {
          cylinder(h = 50, r = 28, center = true);
        }
        cylinder(h = 60, r = 25, center = true);
        translate(v = [0, 95, 0])
        {
          cube(size = [200, 200, 60], center = true);
        }
      }
      translate(v = [0, 0, -30])
      {
        translate(v = [0, -15, 0])
        {
          sphere(r = 50);
        }
      }
    }
  }
}
