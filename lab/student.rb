

class Student
  attr_accessor :student_name, :student_cohort

  def initialize(name, cohort)
    @student_name = name
    @student_cohort = cohort
  end

  def student_name
    return @student_name
  end

  def student_cohort
    return @student_cohort
  end


  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_student_cohort(new_cohort)
    @student_cohort = new_cohort
  end


def can_talk()
  return "I can talk"
end

def favourite_programming_language(program)
  return "I love #{program}"
end

end
