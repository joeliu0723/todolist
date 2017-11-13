class UpdateColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :todolists, :finished, :string
  end
end
