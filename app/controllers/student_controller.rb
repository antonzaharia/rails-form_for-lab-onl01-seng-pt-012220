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
    @student = Student.new()
  end

  def edit
  end

  def update
  end

  private

    def post_params(*args)
      params.require(:student).permit(args)
end
