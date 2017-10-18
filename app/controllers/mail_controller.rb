class MailController < ApplicationController
  # index
  # =====
  #   Root controller for application. Display form for creating a new email.
  def index
  end

  # create
  # ======
  #   Send the email to the provided email addresses
  def create
    # Check that there is at least something entered in the recipients and body field
    if mail_params[:recipients].blank? || mail_params[:body].blank?
      flash[:error] = "Either recipients or body missing. Retry."
      redirect_to '/'
      return
    end

    # Loop through the recipients list breaking on every ',' character (Strips whitespace first)
    mail_params[:recipients].strip.split(",").each do |recipient|
      DemoMailer.send_email(recipient, mail_params[:body]).deliver_later
    end

    flash[:success] = "Emails Sent."
    redirect_to '/'
  end

  private

  def mail_params
    params.permit(:recipients, :body)
  end
end
