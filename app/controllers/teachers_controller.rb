class TeachersController < ApplicationController
  def new
  	@teacher = Teacher.new
  end
  def show
    @teacher = Teacher.find(params[:id])
  end
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      # Handle a successful save.
    else
      render 'new'
    end
  end
  private
	  def teacher_params
	    params.require(:teacher).permit(:name, :email, :password, :password_confirmation)
	  end
end
