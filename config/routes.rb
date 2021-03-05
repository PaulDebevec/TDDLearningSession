Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  get '/blogs', to: 'blogs#index'
end
