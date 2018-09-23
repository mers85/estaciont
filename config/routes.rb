Rails.application.routes.draw do
  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :stations, module: "stations" do
        resources :cameras
        resources :workers
        resources :alerts
        resources :reports, only: [:index]
      end
      resources :screenshots

      resources :users, module: "users" do
        resources :reports, only: [:index]
      end
    end
  end
end
