namespace :dailymail do
  desc "dailymail"
  task dailymail: :environment do
    UserMailer.daily.deliver
  end
end
