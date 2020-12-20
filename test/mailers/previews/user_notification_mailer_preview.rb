# Preview all emails at http://localhost:3000/rails/mailers/user_notification_mailer
class UserNotificationMailerPreview < ActionMailer::Preview
  def notification_mailer_preview
    UserNotificationMailer.notification_mailer(User.last,User.first)
  end
end
