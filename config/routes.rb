Rails.application.routes.draw do
  get 'assignments/index'
  resources :"assignments", :"collaborators", :"comments", :"departments", :"jobs", :"permissions", :"statuses"
  root 'assignments#index'

  get 'collaborators/index' => 'collaborators#index'
  get 'comments/index' => 'comments#index'
  get 'departments/index' => 'departments#index'
  get 'jobs/index' => 'jobs#index'
  get 'permissions/index' => 'permissions#index'
  get 'statuses/index' => 'statuses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
