class AddCompanionIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :companion_id, :integer
  end
end
