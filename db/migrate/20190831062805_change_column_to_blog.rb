class ChangeColumnToBlog < ActiveRecord::Migration[5.2]
  def up
    change_column :blogs, :content, :text
  end

  def down
    change_column :blogs, :content, :integer
  end
end
