class CreateProdutoVendas < ActiveRecord::Migration[5.1]
  def change
    create_table :produto_vendas do |t|
      t.integer :produto_id
      t.float :preco_venda
      t.integer :quantidade
      t.references :venda, foreign_key: true

      t.timestamps
    end
  end
end
