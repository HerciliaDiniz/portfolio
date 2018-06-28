class AddKeywordsToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :keywords, :text
  end
end
