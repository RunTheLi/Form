class RenameRmailToEmailInUsers < ActiveRecord::Migration[8.0]
  def change
    rename_column :users, :rmail, :email
  end
end
