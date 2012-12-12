class CreateMicropos < ActiveRecord::Migration
  def change
    create_table :micropos do |t|
      t.string :content
      t.text :userid

      t.timestamps
    end
  end
end
