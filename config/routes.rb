Rails.application.routes.draw do
  root 'welcome#index'
  get 'question' => 'questions#show'
  get 'questions' => 'questions#index'
end
