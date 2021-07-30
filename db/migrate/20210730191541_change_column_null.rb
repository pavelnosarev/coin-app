class ChangeColumnNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :admin, :boolean, default: false
  end
end
