class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.text :problem
      t.text :solution
      t.references :offers

      t.timestamps
    end
  end
end
