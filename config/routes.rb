LeanDashboard::Engine.routes.draw do
  resources :hypotheses, :metrics
  root to: 'hypotheses#index'
end
