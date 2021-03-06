class SessionsController < ApplicationController
  def new
  end

  def create
  	 teacher = Teacher.find_by(email: params[:session][:email].downcase)
  	 if teacher && teacher.authenticate(params[:session][:password])
  	 	log_in teacher
  	 	redirect_to '/surveys'
  	 else
  	 	flash.now[:danger] = 'Invalid email/password combination'
  	 	render 'new'
  	 end
  end

  def destroy
  end
end
