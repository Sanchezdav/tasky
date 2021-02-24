class ChangeNameToContent < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :name, :content
  end
end
