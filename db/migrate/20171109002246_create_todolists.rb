class CreateTodolists < ActiveRecord::Migration[5.1]
  def change
    create_table :todolists do |t|
      t.string :name
      t.date :due_date
      t.text :description
      t.string :file_location
      t.timestamps
    end
  end
end
