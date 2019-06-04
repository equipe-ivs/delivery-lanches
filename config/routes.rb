Rails.application.routes.draw do

  resources :funcionarios
  get 'venda_join_produto/index'

  get 'venda_join_produto/new'

  get 'venda_join_produto/show'

  get 'venda_join_produto/edit'

  get 'vendas/index'

  get 'vendas/new'

  get 'vendas/edit'

  get 'vendas/show'

  get "welcome/index"

  resources :produtos

  resources :vendas do
    resources :produtos
  end

  resources :clientes

  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
