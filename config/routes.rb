Rails.application.routes.draw do
  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :stations do
        resources :cameras
        resources :workers
      end
      resources :screenshots
    end
  end
end
