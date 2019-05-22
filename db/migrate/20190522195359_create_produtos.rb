class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.integer :id
      t.string :descricao
      t.decimal :precoCompra
      t.decimal :precoVenda

      t.timestamps
    end
  end
end
