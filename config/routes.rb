Rails.application.routes.draw do

  root "records#index"
  post "records/create" => "records#create"
  get "records/new" => "records#new"

end
