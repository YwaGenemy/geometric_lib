import unittest
from rectangle import area, perimeter


class RectangleTestCase(unittest.TestCase):
    def test_zero_mul(self):
        res = area(10, 0)
        self.assertEqual(res, 0)
    
    def test_square_mul(self):
        res = area(10, 10)
        self.assertEqual(res, 100)
    
    def test_normal_area(self):
        res = area(3, 5)
        self.assertEqual(res, 15)
    
    def test_perimeter_normal(self):
        res = perimeter(3, 5)
        self.assertEqual(res, 16)
    
    def test_perimeter_zero(self):
        res = perimeter(0, 5)
        self.assertEqual(res, 10)
    
    def test_perimeter_square(self):
        res = perimeter(5, 5)
        self.assertEqual(res, 21)


