Rails.application.routes.draw do
  get 'dashboard', controller: :dashboard, action: :show

  namespace :dashboard, as: nil do
    resources :questionnaires, path: "cuestionarios" do
      resources :answered_questionnaires, path: "respuestas", as: :answered
    end

    resources :users, path: "usuarios" do
      resources :questionnaires, path: "cuestionarios", controller: "users/questionnaires"
    end
  end
  devise_for :users
  root to: "home#index"
end
