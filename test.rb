require 'test/unit'
require 'bubbel.rb'

class A
end

class BubbelTest < Test::Unit::TestCase
  def test_fibonacci
    Numericc.prototype.fibonacci do
      return 0 if self == 0
      return 1 if self == 1
      return (self-1).fibonacci + (self-2).fibonacci if self > 1
    end
    assert_not_nil(0.method(:fibonacci))
    assert_equal(0,0.fibonacci)
    assert_equal(1,1.fibonacci)
    assert_equal(1,2.fibonacci)
    assert_equal(55,10.fibonacci)
  end
  
  def test_with_arguments
    A.prototype.foo do |bar|
      bar
    end
    a = A.new
    assert_equal("hello world!", a.foo("hello world!"))
  end
  
  def test_with_exceptions
    A.prototype.foo do |bar|
      bar
    end
    a = A.new
    assert_raise(ArgumentError) {a.foo}
  end
end