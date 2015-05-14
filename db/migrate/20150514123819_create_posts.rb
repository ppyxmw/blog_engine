class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, unique: true
      t.string :content, unique: true
      t.references :author
      t.references :category
    end
  end
end
