Hashtag::Application.routes.draw do
  match "/:search", to: "searches#new"
  match "/", to: "searches#index"
end
