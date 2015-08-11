class AddLevelToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :level, :string
  end
end
