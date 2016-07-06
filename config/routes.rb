# frozen_string_literal: true

Rails.application.routes.draw do
  root 'external#home'

  scope module: 'external' do
    get :home
    get :version
    get :contact
    get :submit_contact, to: redirect('contact')
    post :submit_contact
    get :thanks
  end
end
