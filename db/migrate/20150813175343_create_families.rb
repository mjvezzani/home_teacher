class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :surname
      t.integer :member_id
    end
  end
end
