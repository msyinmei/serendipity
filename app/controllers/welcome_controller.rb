class WelcomeController < ApplicationController
  before_action :confirm_logged_in, only: [:index]
  before_action :prevent_login_signup, only: [:signup, :login]
  skip_before_action :verify_authenticity_token

  respond_to :json, :html

  def signup
    @user = User.new
  end

  def login
    @user = User.new
  end

  def index
    @user = User.find(session[:user_id])
  end

  def create
    @user = User.create(user_params)
    if @user.save
      #Usermailer
      session[:user_id] = @user.id
      flash[:success] = "You are now logged in!"
      redirect_to index_path
    else
      render :login
    end
  end

  def attempt_login

    if params[:email].present? && params[:password].present?
      found_user = User.where(email: params[:email]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end

    if !found_user
      flash.now[:alert] = "Invalid email"
      render :login

    elsif !authorized_user
      flash.now[:alert] = "Invalid password"
      render :login

    else
      session[:user_id] = authorized_user.id
      flash[:success] = "You are now logged in."
      redirect_to index_path
    end

  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to login_path
  end



  private
  def user_params
    params.require(:user).permit(:email, :password, :password_digest)
  end

  def confirm_logged_in
    unless session[:user_id]
      redirect_to login_path, alert: "Please log in"
    end
  end

  def prevent_login_signup
    if session[:user_id]
      redirect_to index_path
    end
  end
end
