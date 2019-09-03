require("minitest/autorun")
require("minitest/rg")
require_relative("../Extension.rb")

class TestLibrary < MiniTest::Test

  def setup()

    @library = Library.new(

      @the_fellowship_of_the_ring = {
      title: "the_fellowship_of_the_ring",
      rental_details: {
        student_name: "Colin",
        date: "01/01/2019"
      }
    },

    @the_two_towers = {
      title: "the_two_towers",
      rental_details: {
        student_name: "Jordan",
        date: "02/01/2019"
      }
    },

    @the_return_of_the_king = {
      title: "the_return_of_the_king",
      rental_details: {
        student_name: "Niall",
        date: "03/01/2019"
      }
    },

    @the_hobbit = {
      title: "the_hobbit",
      rental_details: {
        student_name: "Adam",
        date: "04/01/2019"
      }
    },

    @books = [@the_fellowship_of_the_ring, @the_two_towers, @the_return_of_the_king, @the_hobbit]

  )

  end

  def test_get_books__01()
    result = [@the_fellowship_of_the_ring, @the_two_towers, @the_return_of_the_king, @the_hobbit]
    assert_equal(result, @books)
  end

#--------- OR ----------

  def test_get_a_book__02()
    result = @library.get_a_book("the_hobbit")
    assert_equal("the_hobbit", result)
  end

  def test_get_all_info()
    result = @library.get_all_info("the_hobbit")
    assert_equal(@the_hobbit, result)
  end

  def test_get_an_info()
    result = @library.get_an_info("the_hobbit")
    expected = @the_hobbit[:rental_details]
    assert_equal(expected, result)
  end
  #
  def test_get_all_info()
    result = @library.get_all_info("the_hobbit")
    assert_equal(@the_hobbit, result)
  end
  #
  def test_get_an_info()
    result = @library.get_an_info("the_hobbit")
    expected = @the_hobbit[:rental_details]
    assert_equal(expected, result)
  end
  #
  def test_get_a_new_book()
    result = @library.get_a_new_book("the_hobbit")
    expected = {title: "the_hobbit", name: "Adam", date: " "}
    assert_equal(expected, result)
  end
  #
  def test_changing_details()
    result = @library.changing_details("the_hobbit", "JohnDoe", "10/01/2019")
    expected =
    {title: "the_hobbit",
    rental_details: {
      student_name: "JohnDoe",
      date: "10/01/2019"}
    }
    assert_equal(expected, result)
  end




end
