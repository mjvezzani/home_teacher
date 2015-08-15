class AddCompanionshipIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :companionship_id, :integer
  end
end
