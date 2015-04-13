Rails.application.routes.draw do
    get '/' => 'concerts#new'
    post '/kisses' => 'concerts#create'
    get '/kisses/index' => 'concerts#index'
    get 'kisses/week' => 'concerts#week'

end
