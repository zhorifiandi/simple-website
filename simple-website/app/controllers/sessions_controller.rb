class SessionsController < ApplicationController
  def new
    @items = Item.all
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to "/home"
    else
      # Create an error message.
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      redirect_to '/login', alert: "Wrong email password combination"
    end
  end

  def destroy
    log_out
    redirect_to "/login"
  end
end
