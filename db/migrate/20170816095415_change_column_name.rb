class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :movies, :movie, :moviename
  end
end
