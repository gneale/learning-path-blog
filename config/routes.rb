Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Defines the root path route ("/")
    root "blog_posts#index"
  #   #new route for blog posts
  #   get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  #   #show route for blog posts"
  #   get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  #   #create route for blog posts
  #   post "/blog_posts", to: "blog_posts#create", as: :blog_posts    
  #   #edit route for blog posts
  #   get "/blog_posts/:id/edit", to: "blog_posts#edit"
  #   #update route for blog posts
  #   patch "/blog_posts/:id", to: "blog_posts#update", as: :edit_blog_post
    
  #     # -> blog_post_path
  #     # -> blog_post_url
  #   #delete route for blog posts
  #   delete "/blog_posts/:id", to: "blog_posts#destroy"

  resources :blog_posts
end
