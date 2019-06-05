class CreateProdutoEstoques < ActiveRecord::Migration[5.1]
  def change
    create_table :produto_estoques do |t|
      t.string :descricao
      t.float :preco_compra
      t.float :quantidade

      t.timestamps
    end
  end
end
