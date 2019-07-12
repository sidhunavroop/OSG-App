class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :preview_text
      t.text :body
      t.integer :author_id

      t.timestamps
    end
  end
end
