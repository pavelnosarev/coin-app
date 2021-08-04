class AddStatusToUserCoins < ActiveRecord::Migration[6.1]
  def change
    add_column :user_coins, :status, :boolean, default: false, null: false
  end
end
