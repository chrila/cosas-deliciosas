class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.belongs_to :brewery, null: false, foreign_key: true
      t.belongs_to :beer_style, null: false, foreign_key: true
      t.integer :ibu
      t.decimal :abv
      t.string :name

      t.timestamps
    end
  end
end
