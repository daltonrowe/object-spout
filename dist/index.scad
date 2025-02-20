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
    cylinder(h = 20, r = 18, center = true);
    translate(v = [0, 45, 0])
    {
      cube(size = [100, 100, 40], center = true);
    }
  }
  translate(v = [0, 0, 30])
  {
    translate(v = [0, 0, -5])
    {
      intersection()
      {
        difference()
        {
          translate(v = [0, 0, 20])
          {
            union()
            {
              #union()
              {
                cylinder(h = 80, r = 28, center = true);
              }
            }
          }
          cylinder(h = 90, r = 25, center = true);
          translate(v = [0, 95, 0])
          {
            cube(size = [200, 200, 100], center = true);
          }
        }
        translate(v = [0, 0, -10])
        {
          translate(v = [0, -15, 0])
          {
            sphere(r = 50);
          }
        }
      }
    }
  }
}
