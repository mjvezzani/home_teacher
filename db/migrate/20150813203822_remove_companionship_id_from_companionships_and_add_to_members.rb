class RemoveCompanionshipIdFromCompanionshipsAndAddToMembers < ActiveRecord::Migration
  def change
    remove_column :companionships, :companionship_id, :integer
    add_column :members, :companionship_id, :integer
  end
end
