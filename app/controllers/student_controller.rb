class StudentController < ApplicationController
  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
    @student.save
    redirect_to student_pats(@student)
  end

  def edit
  end

  def update
  end

  private

    def post_params(*args)
      params.require(:student).permit(args)
    end
end
