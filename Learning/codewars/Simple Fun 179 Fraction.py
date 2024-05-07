https://www.codewars.com/kata/58b8db810f40ea7788000126/python

from fractions import Fraction

def fraction(a, b):
    fraction = Fraction(a, b)
    simplified_fraction = fraction.limit_denominator()
    numerator = fraction.numerator
    denominator = fraction.denominator
    result = numerator + denominator
    return result