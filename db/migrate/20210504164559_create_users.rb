class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :age
      t.string :cpf
      t.references :genero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
