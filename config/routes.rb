NeubauerPhoto::Application.routes.draw do
  root :to => 'pages#home'

  match '/about'   => "pages#about"
  match '/gallery' => "pages#gallery"
  match '/home'    => "pages#home"
  match '/contact' => "pages#contact"
end
