class DropImage < ActiveRecord::Migration[7.1]
  def change
    drop_table :urls
    drop_table :images
  end
end
