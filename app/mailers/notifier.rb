class Notifier < ActionMailer::Base
  default from: "donotreply@coworkbuffalo.com"

  def confirmation(registration)
    @registration = registration
    mail to: registration.email, subject: "Thanks for registering for BarCamp Buffalo 6!"
  end
end
