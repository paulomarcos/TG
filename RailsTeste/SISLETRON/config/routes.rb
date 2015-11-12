Rails.application.routes.draw do
  root 'pagina_inicial#index'

  get '/alunos' => 'alunos#index'
  get '/alunos/:id' => 'alunos#show', as: :aluno
  get '/alunos/:id/edit' => 'alunos#edit', as: :edit_aluno
  patch '/alunos/:id' => 'alunos#update'

  get '/atividades' => 'atividades#index'
  get '/atividades/new' => 'atividades#new'
  get '/atividades/:id' => 'atividades#show', as: :atividade
  get '/atividades/:id/edit' => 'atividades#edit', as: :edit_atividade
  patch '/atividades/:id' => 'atividades#update'

  get '/escolas' => 'escolas#index'
  get '/escolas/:id' => 'escolas#show', as: :escola
  get '/exercicios/:id/edit' => 'exercicios#edit', as: :edit_exercicio
  patch '/exercicios/:id' => 'exercicios#update'

  get '/exercicios' => 'exercicios#index'
  get '/exercicios/new' => 'exercicios#new'
  get '/exercicios/:id' => 'exercicios#show', as: :exercicio

  get '/material_motivadors/' => 'material_motivadors#index'
  get '/material_motivadors/new' => 'material_motivadors#new'
  get '/material_motivadors/:id' => 'material_motivadors#show', as: :material_motivador
  get '/material_motivadors/:id/edit' => 'material_motivadors#edit', as: :edit_material_motivadors
  patch '/material_motivadors/:id' => 'material_motivadors#update'

  get '/professors' => 'professors#index'
  get '/professors/:id' => 'professors#show', as: :professor
  get '/professors/:id/edit' => 'professors#edit', as: :edit_professor
  patch '/professors/:id' => 'professors#update'

  get '/projetos' => 'projetos#index'
  get '/projetos/new' => 'projetos#new'
  get '/projetos/:id' => 'projetos#show', as: :projeto
  get '/projetos/:id/edit' => 'projetos#edit', as: :edit_projeto
  patch '/projetos/:id' => 'projetos#update'

  get '/respostas' => 'respostas#index'
  get '/respostas/new' => 'respostas#new'
  get '/respostas/:id/edit' => 'respostas#edit', as: :edit_resposta
  patch '/respostas/:id' => 'respostas#update'

  get '/turmas' => 'turmas#index'
  get '/turmas/:id' => 'turmas#show', as: :turma

  post 'atividades' => 'atividades#create'
  post 'exercicios' => 'exercicios#create'
  post 'material_motivadors' => 'material_motivadors#create'
  post 'projetos' => 'projetos#create'
  post 'respostas' => 'respostas#create'


  resources :projetos do
    resources :atividades, shallow: true
  end
  resources :atividades


  resources :atividades do
    resources :material_motivadors, shallow: true
  end
  resources :material_motivadors


  resources :material_motivadors do
    resources :exercicios, shallow: true
  end
  resources :exercicios


  resources :exercicios do
    resources :respostas, shallow: true
  end
  resources :respostas


  get '/cadastro_aluno' => 'alunos#new'
  post '/alunos' => 'alunos#create'

  get '/cadastro_professor' => 'professors#new'
  post '/professors' => 'professors#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
