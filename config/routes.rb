# frozen_string_literal: true

Rails.application.routes.draw do
  root 'external#home'

  scope module: 'external' do
    get :home
    get :version
  end
end
