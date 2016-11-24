class RenameNameToFirstName < ActiveRecord::Migration[5.0]
  def change
    rename_column :contacts, :name, :first_name
  end
end
