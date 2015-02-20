class SessionsController < ApplicationController
  def new
  end

  def create
    # user = User.find_by(email: params[:session][:email].downcase)
    # if user && user.authenticate(params[:session][:password])
    user = authenticate(params[:email], params[:password])
    if user
      # プロフィールページへリダイレクト
      sign_in user
      redirect_back_or user
    else
      flash.now[:danger] = "Invalid email/password combination"
      render "new"
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

  private

  def authenticate(email, password)
    user = User.find_by(email: email.downcase)
    return user if user && user.authenticate(password)
  end
end
