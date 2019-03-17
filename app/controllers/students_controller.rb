class StudentsController < ApplicationController

  def index
    @students = Student.all
  end



  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  # what does this private method do?

  # helps us implement StrongParams in Rails 5 - it's a measure added for extra
  # security to ensure that a user cannot enter parameters in the form that you
  # do not want them to be able to. Narrows down the information a user can pass
  # in and therefore increases security.

  # In order to implement it, call #require on the params hash in order to specify
  # that the student_params method will return only the value of the key ':student'.

  # Then chain the method #permit to that in order to permit only the following
  # values of the specified keys (:first_name & :last_name) inside of the value
  # of the symbol you required (:student).
end
