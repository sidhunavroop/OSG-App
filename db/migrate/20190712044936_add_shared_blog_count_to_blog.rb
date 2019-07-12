class AddSharedBlogCountToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :shared_blog_count, :integer, default: 0
  end
end
