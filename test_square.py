import unittest
from square import area, perimeter


class SquareTestCase(unittest.TestCase):
    def test_area_normal(self):
        res = area(5)
        self.assertEqual(res, 25)
    
    def test_area_zero(self):
        res = area(0)
        self.assertEqual(res, 0)
    
    def test_area_one(self):
        res = area(1)
        self.assertEqual(res, 1)
    
    def test_perimeter_normal(self):
        res = perimeter(5)
        self.assertEqual(res, 20)
    
    def test_perimeter_zero(self):
        res = perimeter(0)
        self.assertEqual(res, 0)
    
    def test_perimeter_one(self):
        res = perimeter(1)
        self.assertEqual(res, 4)


