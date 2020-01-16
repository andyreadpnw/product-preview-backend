class CreateUserGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :user_groups do |t|
      t.string :usergroup_name
      t.string :access_level

      t.timestamps
    end
  end
end
