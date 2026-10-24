Rails.application.routes.draw do
  root "customers#index"
  get "customers/alphabetized", to: "customers#alphabetized", as: :alphabetized_customers
  get "customers/missing_email", to: "customers#missing_email", as: :missing_email_customers

  ActiveAdmin.routes(self)
end
