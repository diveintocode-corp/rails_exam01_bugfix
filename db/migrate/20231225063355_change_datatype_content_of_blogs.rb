class ChangeDatatypeContentOfBlogs < ActiveRecord::Migration[6.1]
  def change
    change_column :blogs, :content, :string
  end
end
