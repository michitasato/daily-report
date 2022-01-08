Rails.application.routes.draw do

  root 'application#hello'
  get 'records/new'
  get "records/index" => "records#index"
end
