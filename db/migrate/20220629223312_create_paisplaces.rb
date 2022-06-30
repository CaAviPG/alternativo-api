class CreatePaisplaces < ActiveRecord::Migration[6.1]
  def change
    create_table :paisplaces do |t|
      t.string :imagen
      t.string :denominacion
      t.integer :habitantes
      t.integer :superficie
      t.references :continente, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
