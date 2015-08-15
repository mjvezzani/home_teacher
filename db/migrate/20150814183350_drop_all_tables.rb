class DropAllTables < ActiveRecord::Migration
  def change
    drop_table :companionships
    drop_table :families
    drop_table :home_teaching_assignments
    drop_table :members 
  end
end
