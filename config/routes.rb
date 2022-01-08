Rails.application.routes.draw do

  root "application#hello"
  post "records/create" => "records#create"
  get "records/new" => "records#new"
  get "records/index" => "records#index"
end
