class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :brand
      t.string :author
      t.text :review

      t.timestamps
    end
  end
end
