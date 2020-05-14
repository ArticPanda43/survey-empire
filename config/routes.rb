Rails.application.routes.draw do
  get 'survey_analysis/analyse_survey'
  resources :question_answers do
    resources :question_option_selections
  end
  resources :surveys do
     resources :questions do
       resources :question_options
     end
  end
  post 'surveys/:id', to: 'surveys#surveyReact'
  get 'surveys/:id?analyse=true', to: 'surveys#survey_analytics'
  #get 'surveys/survey_analytics'
  root 'home#home'
  get 'home/contact'
  devise_for :users
  #UNCOMMENT BELOW to stream the homepage
  #get 'home/stream_test'
  # => default maps homepage to that action

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
