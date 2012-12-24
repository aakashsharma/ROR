class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :nickname
      t.string :email
      t.date :DateofBirth
      t.string :maritalstatus
      t.string :group

      t.timestamps
    end
  end
end
