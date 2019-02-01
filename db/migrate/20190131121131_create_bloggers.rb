class CreateBloggers < ActiveRecord::Migration[5.2]
  def change
    create_table :bloggers do |t|
      t.string :social_network
      t.bigint :followers
      t.string :account_name
      t.text :about

      t.timestamps
    end
  end
end
