require("minitest/autorun")
require("minitest/rg")
require_relative("../PartA.rb")

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Adam", "G15")
  end

  def test_student_name()
    assert_equal("Adam", @student.name())
  end

  def test_student_cohort()
    assert_equal("G15", @student.cohort())
  end

  def test_set_student_name()
    @student.set_student_name("Paul")
    assert_equal("Paul", @student.name())
  end

  def test_set_student_cohort()
    @student.set_student_cohort("G14")
    assert_equal("G14", @student.cohort())
  end

  def test_student_to_talk()
    result = @student.get_the_student_to_talk()
    assert_equal("I can talk!", result)
  end

  def test_get_fav_lang()
    result = @student.get_fav_lang("Ruby")
    assert_equal("My favourite language is: Ruby", result) #miert nem jo a masik?
  end
end
