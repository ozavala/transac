class CreateAccountingTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :accounting_transactions do |t|
      t.date :transaction_date
      t.date :entry_date
      t.string :description
      t.string :transaction_type_code
      t.integer :to_party_id
      t.integer :from_party_id
      t.integer :from_org_party_id

    end
  end
end
