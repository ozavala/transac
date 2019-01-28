class CreateAccountingTransactionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :accounting_transaction_types do |t|
      t.string :transaction_type_code
      t.string :description

    end
  end
end
