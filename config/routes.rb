Rails.application.routes.draw do
  get "/destinations", to: "destinations#index", as: "destinations"
  get "/destinations/new", to: "destinations#new", as: "new_destination"
  get "/destinations/:id", to: "destinations#show", as: "destination"
  post "/destinations", to: "destinations#create"
  get "/destinations/:id/edit", to: "destinations#edit", as: "edit_destination"
  patch "/destinations/:id", to: "destinations#update"
  delete "/destinations/:id", to: "destinations#destroy"
  
  get "/bloggers", to: "bloggers#index", as: "bloggers"
  get "/bloggers/new", to: "bloggers#new", as: "new_blogger"
  get "/bloggers/:id", to: "bloggers#show", as: "blogger"
  post "/bloggers", to: "bloggers#create"
  get "/bloggers/:id/edit", to: "bloggers#edit", as: "edit_blogger"
  patch "/bloggers/:id", to: "bloggers#update"
  delete "/bloggers/:id", to: "bloggers#destroy"

  get "/posts", to: "posts#index", as: "posts"
  get "/posts/new", to: "posts#new", as: "new_post"
  get "/posts/:id", to: "posts#show", as: "post"
  post "/posts", to: "posts#create"
  get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
  patch "/posts/:id", to: "posts#update"
  delete "/posts/:id", to: "posts#destroy"
  get "/posts/:id/like", to: "posts#like", as: "like"
  

end
