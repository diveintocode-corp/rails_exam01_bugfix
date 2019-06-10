class ChangeDatatypeContentOfBlogs < ActiveRecord::Migration[5.2]
  def change
    # [形式] change_column(テーブル名, カラム名, データタイプ, オプション)
    change_column :blogs, :content, :text
  end
end
