class CreateServingFormats < ActiveRecord::Migration[6.1]
  def change
    create_table :serving_formats do |t|
      t.string :name

      t.timestamps
    end
  end
end
