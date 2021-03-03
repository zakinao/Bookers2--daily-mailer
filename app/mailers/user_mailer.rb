class UserMailer < ApplicationMailer
  def user_welcome_mail(user)
    @user = user
    mail to: @user.email
  end
end
