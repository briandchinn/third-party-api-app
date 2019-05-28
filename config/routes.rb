Rails.application.routes.draw do
  namespace :api do
    get "/top_stories" => "top_stories#index"
  end
end
