class GeneralLedgerAccount < ApplicationRecord
  has_many :organization_gl_accounts
  belongs_to :gl_account_type
end
