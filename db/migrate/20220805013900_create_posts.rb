class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :body, null: false, default: '', lenght: { maximum: 5000 }
      t.references :creator, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
