class ExternalController < ApplicationController
  layout 'layouts/b-layout'

  def home
  end

  def thanks
  end

  def submit_contact
    if params[:name].present? && params[:email].present? && params[:comments].present?
      UserMailer.contact(params[:name], params[:email], params[:comments]).deliver_later if EMAILS_ENABLED
      redirect_to thanks_path
    else
      render :contact
    end
  end
end
