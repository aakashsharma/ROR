class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :name
      t.string :mail
      t.integer :contactno

      t.timestamps
    end
  end
end
