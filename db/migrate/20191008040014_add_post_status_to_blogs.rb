class AddPostStatusToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :status, :integer
  end
end
