class CreateHomeTeachingAssignments < ActiveRecord::Migration
  def change
    create_table :home_teaching_assignments do |t|
      t.integer :companionship_id
      t.integer :family_id
    end
  end
end
