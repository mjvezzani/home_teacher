class CreateCompanionships < ActiveRecord::Migration
  def change
    create_table :companionships do |t|
      t.integer :companion_id
      t.integer :home_teacher_id
    end
  end
end
