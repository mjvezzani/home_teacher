class AddCompanionshipIdToCompanionships < ActiveRecord::Migration
  def change
    add_column :companionships, :companionship_id, :integer
  end
end
