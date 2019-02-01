Rails.application.routes.draw do
  get 'pages/menu'

  get 'general_ledger_accounts/index'
  get 'reports/gl_chart_of_accounts'
  get 'reports/account_transactions'
  get 'reports/income_balance'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
