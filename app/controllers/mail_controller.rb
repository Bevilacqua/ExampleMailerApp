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
    redirect_to '/'
  end
end
