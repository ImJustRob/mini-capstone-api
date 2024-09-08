class SupplierId < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
     add_column :products, :supplier_id, :integer
    end
  end
end
