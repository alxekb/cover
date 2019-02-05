class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :name
      t.text :idea
      t.text :purpose
      t.text :description
      t.references :blogger, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
