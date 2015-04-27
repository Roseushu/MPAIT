Rails.application.routes.draw do
resources :courses do
  resources :chapters
end

  resources :nms
  resources :pswds
  
  get 'welcome/headpage'
  get 'welcome/main'
  get 'welcome/login'
  get 'welcome/video'
  get 'welcome/enroll'
  get 'welcome/enrollsuccess'


end

