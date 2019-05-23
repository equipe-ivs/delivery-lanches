class CreateVendas < ActiveRecord::Migration[5.1]
  def change
    create_table :vendas do |t|
      t.integer :quantidade
      t.decimal :valorTotal
      t.timestamps
    end
  end
end
