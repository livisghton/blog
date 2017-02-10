class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :nome
      t.integer :avaliacao
      t.text :comentario
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
