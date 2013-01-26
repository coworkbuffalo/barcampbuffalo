class Notifier < ActionMailer::Base
  default from: "donotreply@coworkbuffalo.com"

  def confirmation(registration)
    @registration = registration
    mail to: registration.email, subject: "Thanks for registering for BarCamp Buffalo 6!"
  end

  def reminder(registration)
    @registration = registration
    mail to: registration.email, subject: "Reminder: Barcamp Buffalo 6 is on 2/2/13!"
  end
end
