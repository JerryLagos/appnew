class UserMailer < ApplicationMailer
	default from: 'plataformamillas@gmail.com'
 
  def welcome_email
    @user = params[:user]
    mail(to: 'jerrysebastianlagosc@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
