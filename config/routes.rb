Rails.application.routes.draw do
  root 'welcome#index'
  get 'questions' => 'questions#index'
end
