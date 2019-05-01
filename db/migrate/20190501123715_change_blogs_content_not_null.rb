class ChangeBlogsContentNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :blogs, :content, false
  end
end
