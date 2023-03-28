class RenameUserIdToAuthorId < ActiveRecord::Migration[7.0]
  def change
    rename_column :payments, :user_id, :author_id
  end
end
