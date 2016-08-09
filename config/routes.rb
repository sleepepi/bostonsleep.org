# frozen_string_literal: true

Rails.application.routes.draw do
  root 'external#home'

  scope module: 'external' do
    get :home
    get :publications
    get :version
    get :contact
    get :submit_contact, to: redirect('contact')
    post :submit_contact
    get :thanks
  end

  get 'sitemap.xml.gz' => 'external#sitemap_xml', as: :sitemap_xml
end
