require 'minitest/test'
require 'minitest/autorun'
require File.expand_path('../person', __FILE__)

class PersonTest < MiniTest::Test
  def setup
    @jeff = Person.new('Jeff')
    @susy = Person.new('Susy')
  end

  def test_name
    assert_equal 'Jeff', @jeff.name
  end

  def test_greet_hello_jeff
    assert_equal "Hi, I'm Jeff", @jeff.greet('Hello')
  end

  def test_greet_hello_susy
    assert_equal "Hi, I'm Susy", @susy.greet('Hello')
  end

  def test_greet_goodbye
    assert_equal 'Bye', @jeff.greet('Goodbye')
  end

  def test_greet_other
    assert_equal 'Yo', @jeff.greet('Yo')
  end
end
