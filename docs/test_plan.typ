
= Отчет по Лабораторной работе №4
=== Предмет: Инструментальные средства разработки ПО (ИсрПО)
=== Тема: Написание Unit тестов.
=== Автор: Колодезников Андрей Аркадьевич 501475

= 1. Цели и задачи тестирования

*Цели:* Обеспечить корректность работы всех математических функций библиотеки, проверить правильность вычислений площади и периметра для всех геометрических фигур.

*Задачи:* Провести функциональное тестирование всех модулей библиотеки, протестировать граничные случаи (нулевые значения, единичные значения).

= 2. Описание тестируемого продукта

  *Название:* geometric_lib — библиотека для вычисления площади и периметра геометрических фигур.

  *Функциональность:* Библиотека предоставляет функции для вычисления площади и периметра следующих геометрических фигур: круг `circle.py`, прямоугольник `rectangle.py`, квадрат `square.py`, треугольник `triangle.py`.

  *Требования:* Все функции должны возвращать корректные числовые значения.

= 3. Область тестирования

Тестируются следующие модули:

- circle.py: `area(r)`, `perimeter(r)`
- rectangle.py: `area(a, b)`, `perimeter(a, b)`
- square.py: `area(a)`, `perimeter(a)`
- triangle.py: `area(a, h)`, `perimeter(a, b, c)`


= 4. Стратегия тестирования

*Тип тестирования:* Функциональное тестирование (с использованием фреймворка unittest).

*Метод:* Черный ящик (тестирование на основе спецификации функций).

*Техники:* Тестирование граничных значений, тестирование точности вычислений (для круга используется `assertAlmostEqual`, для остальных фигур — `assertEqual`).

= 5. Критерии приемки

- Все тесты должны пройти успешно (24 теста, статус OK)
- Граничные случаи обрабатываются корректно

=== Пример запуска программы тестирования:

```python
python -m unittest discover -v
test_area_normal (test_circle.CircleTestCase.test_area_normal) ... ok
test_area_radius_5 (test_circle.CircleTestCase.test_area_radius_5) ... ok
test_area_zero (test_circle.CircleTestCase.test_area_zero) ... ok
test_perimeter_normal (test_circle.CircleTestCase.test_perimeter_normal) ... ok
test_perimeter_radius_3 (test_circle.CircleTestCase.test_perimeter_radius_3) ... ok
test_perimeter_zero (test_circle.CircleTestCase.test_perimeter_zero) ... ok
test_normal_area (test_rectangle.RectangleTestCase.test_normal_area) ... ok
test_perimeter_normal (test_rectangle.RectangleTestCase.test_perimeter_normal) ... ok
test_perimeter_square (test_rectangle.RectangleTestCase.test_perimeter_square) ... ok
test_perimeter_zero (test_rectangle.RectangleTestCase.test_perimeter_zero) ... ok
test_square_mul (test_rectangle.RectangleTestCase.test_square_mul) ... ok
test_zero_mul (test_rectangle.RectangleTestCase.test_zero_mul) ... ok
test_area_normal (test_square.SquareTestCase.test_area_normal) ... ok
test_area_one (test_square.SquareTestCase.test_area_one) ... ok
test_area_zero (test_square.SquareTestCase.test_area_zero) ... ok
test_perimeter_normal (test_square.SquareTestCase.test_perimeter_normal) ... ok
test_perimeter_one (test_square.SquareTestCase.test_perimeter_one) ... ok
test_perimeter_zero (test_square.SquareTestCase.test_perimeter_zero) ... ok
test_area_normal (test_triangle.TriangleTestCase.test_area_normal) ... ok
test_area_zero_base (test_triangle.TriangleTestCase.test_area_zero_base) ... ok
test_area_zero_height (test_triangle.TriangleTestCase.test_area_zero_height) ... ok
test_perimeter_equilateral (test_triangle.TriangleTestCase.test_perimeter_equilateral) ... ok
test_perimeter_normal (test_triangle.TriangleTestCase.test_perimeter_normal) ... ok
test_perimeter_zero (test_triangle.TriangleTestCase.test_perimeter_zero) ... ok

----------------------------------------------------------------------
Ran 24 tests in 0.006s

OK
```

= 6. Ожидаемые результаты

*Статус тестирования:* Все тесты пройдены успешно ($24$ теста, время выполнения $< 0.01$ сек).

*Покрытие модулей:* $100%$ функций покрыто тестами (по 6 тестов для каждого модуля).

*Метрики качества:* $100%$ успешность тестов.

*Отчет о дефектах:* Дефектов не обнаружено.


