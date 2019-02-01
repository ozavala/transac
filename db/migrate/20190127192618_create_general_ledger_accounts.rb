class CreateGeneralLedgerAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :general_ledger_accounts do |t|
      t.string :account_code, null: false
      t.index :account_code
      t.string :name, null: false
      t.string :description, null: false
      t.integer :gl_account_type_id, null: false

    end

  end
end
