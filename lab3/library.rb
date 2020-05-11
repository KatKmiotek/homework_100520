class Library
  attr_accessor :books

  def initialize()
    @books = [{
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Paul",
        date: "01/12/06"
      }
    },
    {
      title: "lord_of_the_flies",
      rental_details: {
        student_name: "Martin",
        date: "01/12/07"
      }
    },
    {
      title: "blindness",
      rental_details: {
        student_name: "Eva",
        date: "01/12/08"
      }
      }]


      def find_book(title)
        for book in @books
          if book[:title] == title
            return book
          end
        end
      end

# doesn't work
      def find_book_rental(title)
        for book in @book
          if book[:title] == title
            return book[:rental_details]
          end
        end
      end

      def add_book()
          new_book = {
            title: "the castle",
            rental_details: {
              student_name: "",
              date: ""
            }
          }
          @books.push(new_book)
      end





  end




















end
