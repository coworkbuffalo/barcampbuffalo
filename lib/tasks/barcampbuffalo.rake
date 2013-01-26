desc "Send reminders to everyone"
task :remind do
  Registration.all.each do |registration|
    Notifier.reminder(registration).deliver
  end
end
