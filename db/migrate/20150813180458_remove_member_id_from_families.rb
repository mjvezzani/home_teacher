class RemoveMemberIdFromFamilies < ActiveRecord::Migration
  def change
    remove_column :families, :member_id, :integer
  end
end
