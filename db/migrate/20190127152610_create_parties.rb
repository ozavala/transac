class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.string :party_type, includes: %w(ORG PER)
      t.string :name
      t.string :last_name
      t.string :first_name

    end
  end
end
