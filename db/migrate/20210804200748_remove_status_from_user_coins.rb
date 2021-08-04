class RemoveStatusFromUserCoins < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_coins, :status, :boolean, default: false
  end
end
