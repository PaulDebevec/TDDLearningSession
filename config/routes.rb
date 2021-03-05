Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  get '/blogs', to: 'blogs#index'
  get '/blogs/:blog_id', to: 'blogs#show'
end
