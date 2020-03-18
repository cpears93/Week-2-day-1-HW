require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

require_relative('../students_hw')

class StudentTest < Minitest::Test

  def test_student_has_name()
    student_chris = Student.new("Chris", "G18")
    assert_equal("Chris", student_chris.name)
  end

  def test_student_has_cohort
    student_colin = Student.new("Colin", "G3")
    assert_equal("G3", student_colin.cohort)
  end

  def test_can_update_name
    student_david = Student.new("David", "G40")
    student_david.set_name("David E")
    assert_equal("David E", student_david.name)
  end

  def test_can_update_cohort
    student_jennifer = Student.new("Jennifer", "E39")
    student_jennifer.set_cohort("G19")
    assert_equal("G19", student_jennifer.cohort)
  end

  def test_student_can_talk
    student = Student.new("Ally", "G40")
    message_from_student = student.talk
    assert_equal("I can talk", student.talk)
  end

  def test_can_say_fav_language
    student_ally = Student.new("Ally", "G40")
    message = student_ally.say_favourite_language("Java")
    assert_equal("I love Java", message)
  end
end
