# Model a Library as a class.
#
# Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.
# This should look something like:
#
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#      student_name: "Jeff",
#      date: "01/12/16"
#     }
#   }
# Create a getter for the books
# Create a method that takes in a book title and returns all of the information about that book.
# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.

class Library

  def initialize(books, the_fellowship_of_the_ring, the_two_towers, the_return_of_the_king, the_hobbit)

    @books = [the_fellowship_of_the_ring, the_two_towers, the_return_of_the_king, the_hobbit]

  end

          # all of the books
  def get_books()
    return @books
  end

  #------- OR --------

          # just one book:
  def get_a_book(title)
    for book in @books
      if book[:title] == title
        return title
      end
    end
  end

  def get_all_info(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def get_an_info(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end

  def get_a_new_book(title)
    book_list = {}
    for book in @books
      if book[:title] == title
        book_list[:title] = book[:title]
        book_list[:name] = book[:rental_details][:student_name]
        book_list[:date] = " "
        return book_list
      end
    end
  end

  def changing_details(title, new_name, new_date)
    for book in @books
      if book[:title] == title
        book[:title] = title
        book[:rental_details][:student_name] = new_name
        book[:rental_details][:date]= new_date
        return book
      end
    end
  end

end
