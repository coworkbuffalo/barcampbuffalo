class Notifier < ActionMailer::Base
  default from: "donotreply@barcampbuffalo.org"

  def confirmation(registration)
    @registration = registration
    mail to: registration.email, subject: "Thanks for registering for BarCamp Buffalo 7!"
  end

  def reminder(registration)
    @registration = registration
    mail to: registration.email, subject: "Reminder: Barcamp Buffalo 7 is on 4/26/14!"
  end
end
