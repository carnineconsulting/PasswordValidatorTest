require_relative 'Calculator'
require "test/unit"

class CalculatorTest < Test::Unit::TestCase

  def testCalculatorNewLineThreeIntegers 
    calc = Calculator.new
    assert_equal(10, calc.sum_array(["\n1,2 3\r 4"],","))
  end
  
  def testCalculatorOneInteger
    calc = Calculator.new
    assert_equal(1, calc.sum_array(["1"],","))
  end
  
  def testCalculatorZeroIntegers
    calc = Calculator.new
    assert_equal(0, calc.sum_array([""],","))
  end
  
  def testCalculatorThreeIntegers 
    calc = Calculator.new
    assert_equal(6, calc.sum_array(["1,2 3"],","))
  end
  
end