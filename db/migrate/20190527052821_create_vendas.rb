class CreateVendas < ActiveRecord::Migration[5.1]
  def change
    create_table :vendas do |t|
      t.integer :produto_id
      t.integer :cliente_id
      t.integer :quantidade
      t.float :total

      t.timestamps
    end
  end
end
