class CreateOrganizationGlAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_gl_accounts do |t|
      t.integer :party_id
      t.date :from_date
      t.date :to_date
      t.integer :general_ledger_account_id
    end
  end
end
