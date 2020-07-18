class ChangeTiteToTitleInPosts < ActiveRecord::Migration[6.0]
  def change
    rename_column :Posts, :title, :title
  end
end
