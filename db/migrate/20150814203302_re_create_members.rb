class ReCreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :lastname
      t.string :firstname
      t.string :email
      t.integer :family_id
    end

    create_table :families do |t|
      t.string :surname
    end
  end
end
