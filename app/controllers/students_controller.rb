class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
<<<<<<< HEAD
    @student = Student.new(post_params(:student))
=======
    @student = Student.new(params.require(:student))
>>>>>>> 72383698f77ca412e00b6038426d86b0c6a49ec9
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
<<<<<<< HEAD
    @student.update(post_params(:student))
    # @student.update(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@student)
  end
  
  	private

	def post_params(*args)
		params.require(:student).permit(*args)
		# params.require(:post).permit(:title, :description)
	end
=======
    @student.update(params.require(:student))
    # @student.update(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@student)
  end
>>>>>>> 72383698f77ca412e00b6038426d86b0c6a49ec9
end