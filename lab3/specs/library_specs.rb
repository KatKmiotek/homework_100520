require('minitest/autorun')
require('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestLibrary < MiniTest::Test


  def test_find_book
    new_library = Library.new()
    assert_equal({
      title: "lord_of_the_flies",
      rental_details: {
        student_name: "Martin",
        date: "01/12/07"}}, new_library.find_book("lord_of_the_flies"))
  end

  def test_find_book_rental
    new_library = Library.new()
    assert_equal({
      rental_details: {
        student_name: "Martin",
        date: "01/12/07"}},
        new_library.find_book_rental("lord_of_the_flies"))
  end


  def test_add_book
    new_library = Library.new()
    new_library.add_book()
    assert_equal( 4, new_library.books().length)

  end

def test_change_book_details
  new_library = Library.new()
  assert_equal({
    title: "Trail",
    rental_details: {
      student_name: "Kat",
      date: "01/12/09"}}, new_library.change_book_details("Trail", "Kat", "01/12/09"))
end

























end
