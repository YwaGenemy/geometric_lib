import unittest
from triangle import area, perimeter


class TriangleTestCase(unittest.TestCase):
    def test_area_normal(self):
        res = area(4, 5)
        self.assertEqual(res, 10)
    
    def test_area_zero_base(self):
        res = area(0, 5)
        self.assertEqual(res, 0)
    
    def test_area_zero_height(self):
        res = area(5, 0)
        self.assertEqual(res, 0)
    
    def test_perimeter_normal(self):
        res = perimeter(3, 4, 5)
        self.assertEqual(res, 12)
    
    def test_perimeter_zero(self):
        res = perimeter(0, 0, 0)
        self.assertEqual(res, 0)
    
    def test_perimeter_equilateral(self):
        res = perimeter(5, 5, 5)
        self.assertEqual(res, 15)

