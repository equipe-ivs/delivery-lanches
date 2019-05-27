class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|

      t.string :descricao
      t.float :preco

      t.timestamps
    end
  end
end
