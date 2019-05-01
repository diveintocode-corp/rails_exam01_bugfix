class ChangeBlogsTitleNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :blogs, :title, false
  end
end
