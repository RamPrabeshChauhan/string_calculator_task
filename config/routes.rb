Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "calculator/add"
    end
  end
end
