class CreateIgeograficos < ActiveRecord::Migration[6.1]
  def change
    create_table :igeograficos do |t|
      t.string :imagen
      t.string :denominacion
      t.integer :altura
      t.text :historia
      t.references :paisplace, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
