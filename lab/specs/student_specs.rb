require('minitest/autorun')
require('minitest/reporters')
require_relative('../student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestStudent < MiniTest::Test

def test_student_name
  code_clan_student = Student.new("Kat Kmiotek", "G19")
  assert_equal("Kat Kmiotek", code_clan_student.student_name)
end

def test_student_cohort
  code_clan_student = Student.new("Kat Kmiotek", "G19")
  assert_equal("G19", code_clan_student.student_cohort)
end

def test_set_student_name
  code_clan_student = Student.new("Kat Kmiotek", "G19")
  code_clan_student.student_name = "Katarzyna Kmiotek"
  assert_equal("Katarzyna Kmiotek", code_clan_student.student_name)
end

def test_set_student_cohort
  code_clan_student = Student.new("Kat Kmiotek", "G19")
  code_clan_student.student_cohort = "G19"
  assert_equal("G19", code_clan_student.student_cohort)
end

def test_can_talk
  code_clan_student = Student.new("Kat Kmiotek", "G19")
  assert_equal("I can talk", code_clan_student.can_talk)

end

def test_favourite_programming_language
  code_clan_student = Student.new("Kat Kmiotek", "G19")
  assert_equal("I love Ruby", code_clan_student.favourite_programming_language("Ruby"))
end






end
