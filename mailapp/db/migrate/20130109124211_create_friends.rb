class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :Name
      t.string :Email
      t.date :DateOfBirth
      t.references :group

      t.timestamps
    end
    add_index :friends, :group_id
  end
end
