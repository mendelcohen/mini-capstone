class ChangeColumnDefaultInCartedProducts < ActiveRecord::Migration[6.0]
  def change
    change_column_default :carted_products, :status, :carted
  end
end
