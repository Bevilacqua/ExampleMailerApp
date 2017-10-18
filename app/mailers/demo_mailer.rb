class DemoMailer < ApplicationMailer
  default from: 'marbleappdev@gmail.com'

  def send_email(recipient, body)
    @body = body
    puts "Sending email..."
 
    # Send the email using the template found at views/demo_mailer/send_email.text.erb
    mail(to: "#{recipient}")
  end
end
