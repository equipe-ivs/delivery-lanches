class CreateVendas < ActiveRecord::Migration[5.1]
  def change
    create_table :vendas do |t|
      t.string :produto
      t.string :cliente
      t.string :quantidade
      t.string :valorTotal

      t.timestamps
    end
  end
end
