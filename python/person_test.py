import unittest
from person import Person

class PersonTest(unittest.TestCase):
    def setUp(self):
        self.jeff = Person('Jeff')
        self.susy = Person('Susy')

    def test_name(self):
        self.assertEqual(self.jeff.name, 'Jeff')

    def test_greet_hello_jeff(self):
        self.assertEqual(self.jeff.greet('Hello'), "Hi, I'm Jeff")

    def test_greet_hello_susy(self):
        self.assertEqual(self.susy.greet('Hello'), "Hi, I'm Susy")

    def test_greet_goodbye(self):
        self.assertEqual(self.jeff.greet('Goodbye'), 'Bye')

    def test_greet_other(self):
        self.assertEqual(self.jeff.greet('Yo'), 'Yo')

if __name__ == '__main__':
    unittest.main()
