class AccountController < ApplicationController

  get '/' do
     erb :account_create
  end

  post '/register' do
    # Hash the oassword
    # only if both password fields match
    password = BCrypt::Password.create(params[:password_hash]) if params[:password_hash] == params[:password_conf]

    # Create a new DB record using Actie Record
    @user = Account.create name: params[:name], email: params[:email], password_hash: password

    # If user saved without errors, start a new session
    if @user
      session[:logged_in] = true
      session[:user_id]    = @user.id
      session[:message] = "Thank you for signing CHANGE ME LATER"

      redirect '/addtokit'
    else
      "You did not sign up in correctly"
    end

  # redirect '/account'
  end


post '/login' do
  @user = Account.find_by email: params[:email]
  compare_to = BCrypt::Password.new(@user.password_hash)
  if @user && compare_to == params[:password_hash]
    session[:logged_in] = true
    session[:name] = params[:name]
    # Welcome back + #{params[:name]}!
    redirect '/addtokit'
  else
    "You entered wrong username or password, try again!"
  end
 end

 get '/logout' do
   session[:logged_in] = false
   "You are logged out now!"
 end


end
