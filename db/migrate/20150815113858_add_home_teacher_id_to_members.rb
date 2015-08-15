class AddHomeTeacherIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :home_teacher_id, :integer
  end
end
