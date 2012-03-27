Hashtag::Application.routes.draw do
  match "/:search", to: "searches#new"
end
