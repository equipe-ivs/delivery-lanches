class CreateFuncionarios < ActiveRecord::Migration[5.1]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.string :senha

      t.timestamps
    end
  end
end
