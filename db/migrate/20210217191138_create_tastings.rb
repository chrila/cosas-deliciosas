class CreateTastings < ActiveRecord::Migration[6.1]
  def change
    create_table :tastings do |t|
      t.string :place
      t.decimal :rating
      t.decimal :price
      t.belongs_to :currency, null: false, foreign_key: true
      t.belongs_to :serving_format, null: false, foreign_key: true
      t.text :comment
      t.belongs_to :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
