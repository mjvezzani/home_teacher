class ChangeColumnNamesInCompanionships < ActiveRecord::Migration
  def change
    rename_column :companionships, :companion_id, :companion_one_id
    rename_column :companionships, :home_teacher_id, :companion_two_id
  end
end
