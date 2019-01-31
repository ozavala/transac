class OrganizationGlAccount < ApplicationRecord
  has_many :general_ledger_accounts
end
