class AddRolesToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :role, :boolean
  end
end
