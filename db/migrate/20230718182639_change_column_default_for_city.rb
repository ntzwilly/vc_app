class ChangeColumnDefaultForCity < ActiveRecord::Migration[7.0]
  def change
    change_column_default :locations, :city, 'Moncton'
  end
end
