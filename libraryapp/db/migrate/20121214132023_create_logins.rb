class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :name
      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
