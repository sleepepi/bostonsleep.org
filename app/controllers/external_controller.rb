# frozen_string_literal: true

# Displays publicly available pages
class ExternalController < ApplicationController
  layout 'layouts/b-layout'

  # GET /
  def home
  end

  # GET /publications
  def publications
  end

  # GET /services
  def services
  end

  # GET /contact
  def contact
  end

  # POST /submit_contact
  def submit_contact
    if params[:name].present? && params[:email].present? && params[:comments].present?
      UserMailer.contact(params[:name], params[:email], params[:comments]).deliver_now if EMAILS_ENABLED
      redirect_to thanks_path
    else
      render :contact
    end
  end

  # GET /thanks
  def thanks
  end

  # GET /sitemap.xml.gz
  def sitemap_xml
    sitemap_xml = File.join(CarrierWave::Uploader::Base.root, 'sitemaps', 'sitemap.xml.gz')
    if File.exist?(sitemap_xml)
      send_file sitemap_xml
    else
      head :ok
    end
  end
end
