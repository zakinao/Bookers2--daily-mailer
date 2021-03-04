class UserMailer < ApplicationMailer
  def user_welcome_mail(user)
    @user = user
    mail to: @user.email
  end
  
  def notify_user(user)
    @user = user
    mail to: @user.email, subject: 'daily_mail'
  end
  
  def daily
    @users = User.all
    @users.each do |user|
      UserMailer.notify_user(user).deliver
    end
  end
  
end
