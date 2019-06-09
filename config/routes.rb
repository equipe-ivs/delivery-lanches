Rails.application.routes.draw do

  resources :enderecos

  get "welcome/index"

  resources :produto_estoques

  resources :funcionarios

  resources :produtos

  resources :vendas do
    resources :produto_vendas,controller: 'produto_venda'
  end

  resources :clientes

  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
