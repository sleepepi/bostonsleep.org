# frozen_string_literal: true

Rails.application.routes.draw do
  root "external#home"

  scope module: :external do
    get :about
    get :contact
    get :facility
    get :personnel
    get :research
    get :services
    get :sitemap_xml, path: "sitemap.xml.gz"
    get :thanks
    get :version
    post :submit_contact, path: "contact"
  end
end
