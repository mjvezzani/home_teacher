class DropHomeTeachersTable < ActiveRecord::Migration
  def change
    drop_table :home_teachers
  end
end
