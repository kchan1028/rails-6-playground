class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.datetime :deleted_at 

      t.timestamps
    end
    
    add_index :posts, :deleted_at
  end
end
