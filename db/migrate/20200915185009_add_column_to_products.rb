class AddColumnToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :brand, :string
  end
end
