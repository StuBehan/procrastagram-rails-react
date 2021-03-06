class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :image
      t.references :user, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
