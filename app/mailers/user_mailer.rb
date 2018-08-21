class UserMailer < ApplicationMailer
	default from: 'plataformamillas@gmail.com'
 
  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.correo, subject: 'Welcome to My Awesome Site')
  end
end
