Rails.application.routes.draw do
  root :to => "movies#index"
  # Routes for the Cast resource:
  # CREATE
  get "/casts/new", :controller => "casts", :action => "new"
  post "/create_cast", :controller => "casts", :action => "create"

  # READ
  get "/casts", :controller => "casts", :action => "index"
  get "/casts/:id", :controller => "casts", :action => "show"

  # UPDATE
  get "/casts/:id/edit", :controller => "casts", :action => "edit"
  post "/update_cast/:id", :controller => "casts", :action => "update"

  # DELETE
  get "/delete_cast/:id", :controller => "casts", :action => "destroy"
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get "/actors/new", :controller => "actors", :action => "new"
  post "/create_actor", :controller => "actors", :action => "create"

  # READ
  get "/actors", :controller => "actors", :action => "index"
  get "/actors/:id", :controller => "actors", :action => "show"

  # UPDATE
  get "/actors/:id/edit", :controller => "actors", :action => "edit"
  post "/update_actor/:id", :controller => "actors", :action => "update"

  # DELETE
  get "/delete_actor/:id", :controller => "actors", :action => "destroy"
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get "/movies/new", :controller => "movies", :action => "new"
  post "/create_movie", :controller => "movies", :action => "create"

  # READ
  get "/movies", :controller => "movies", :action => "index"
  get "/movies/:id", :controller => "movies", :action => "show"

  # UPDATE
  get "/movies/:id/edit", :controller => "movies", :action => "edit"
  post "/update_movie/:id", :controller => "movies", :action => "update"

  # DELETE
  get "/delete_movie/:id", :controller => "movies", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
