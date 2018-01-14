Rails.application.routes.draw do
 
  get 'produtos/novo_produto', to: "products#new", as: :new_product
  get 'produtos', to: "products#index", as: :products
  post 'produtos', to: "products#create"

  # algumas rotas possuem parâmetros, como essa possui o parâmetro id
  delete 'produtos/:id', to: "products#destroy", as: :destroy_product 
 

  get 'lojas/nova_loja', to: "stores#new", as: :new_store
  get 'lojas', to: "stores#index", as: :stores
  post 'lojas', to: "stores#create"

  # algumas rotas possuem parâmetros, como essa possui o parâmetro id
  delete 'lojas/:id', to: "stores#destroy", as: :destroy_store

  root to: "static_pages#index"
  
  get 'home', to:"static_pages#index", as: :home
  get 'about', to: "static_pages#about", as: :about
  get 'contact', to: "static_pages#contact", as: :contact
  get 'joinus', to: "static_pages#joinus", as: :joinus

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
