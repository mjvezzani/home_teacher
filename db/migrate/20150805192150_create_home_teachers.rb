class CreateHomeTeachers < ActiveRecord::Migration
  def change
    create_table :home_teachers do |t|
      t.string :firstname
      t.string :lastname
      t.integer :companion_id

      t.timestamps
    end
  end
end
