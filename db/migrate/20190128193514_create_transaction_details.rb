class CreateTransactionDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_details do |t|
      t.integer :detail_seq
      t.integer :amount
      t.string :debit_credit_flag
      t.integer :party_id
      t.integer :gl_account_id
      t.integer :parent_transaction_id
      t.integer :parent_detail_seq

      t.timestamps
    end
  end
end
