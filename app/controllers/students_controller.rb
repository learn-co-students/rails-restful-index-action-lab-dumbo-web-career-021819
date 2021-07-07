class StudentsController < ApplicationController

  def stu
    @students = Student.all
  end

end