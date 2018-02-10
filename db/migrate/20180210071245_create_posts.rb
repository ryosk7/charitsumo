class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.text :youtube_url

      t.timestamps
    end
  end
end
