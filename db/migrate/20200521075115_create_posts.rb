class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.text :title
      t.string :area
      t.string :country
      t.string :spot
      t.date :first_day
      t.date :last_day
      t.string :image
      t.text :comment

      t.timestamps
    end
  end
end
