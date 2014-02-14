class ChangeName < ActiveRecord::Migration
  def up
    rename_column :lists, :name, :title
  end

  def down
  end
end
