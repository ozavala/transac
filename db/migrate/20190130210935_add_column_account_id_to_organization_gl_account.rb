class AddColumnAccountIdToOrganizationGlAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_gl_accounts,
     :gl_account_id, :integer
    end
end
