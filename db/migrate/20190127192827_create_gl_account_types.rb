class CreateGlAccountTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :gl_account_types do |t|
      t.string :acc_type_code
      t.string :classification

    end
  end
end
