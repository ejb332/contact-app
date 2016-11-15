class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :diary

      t.timestamps
    end
  end
end
