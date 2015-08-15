class AddCompanionshipIdToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :companionship_id, :integer
  end
end
