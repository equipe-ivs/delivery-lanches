class CreateEnderecos < ActiveRecord::Migration[5.1]
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.string :numero
      t.string :bairro
      t.string :cidade

      t.timestamps
    end
  end
end
