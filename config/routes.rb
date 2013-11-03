StarWarsData::Application.routes.draw do
  get '/graph' => 'movies#graph', :as => 'graph'
  get '/show' => 'movies#show'
  root :to => 'movies#index'
end
