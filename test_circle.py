import unittest
import math
from circle import area, perimeter


class CircleTestCase(unittest.TestCase):
    def test_area_normal(self):
        res = area(1)
        self.assertAlmostEqual(res, math.pi, places=5)
    
    def test_area_zero(self):
        res = area(0)
        self.assertEqual(res, 0)
    
    def test_area_radius_5(self):
        res = area(5)
        self.assertAlmostEqual(res, math.pi * 25, places=5)
    
    def test_perimeter_normal(self):
        res = perimeter(1)
        self.assertAlmostEqual(res, 2 * math.pi, places=5)
    
    def test_perimeter_zero(self):
        res = perimeter(0)
        self.assertEqual(res, 0)
    
    def test_perimeter_radius_3(self):
        res = perimeter(3)
        self.assertAlmostEqual(res, 6 * math.pi, places=5)

if __name__ == '__main__' :
    unittest.main()

