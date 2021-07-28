class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :coins do |t|
      t.string :metal
      t.string :description
      t.string :denomination
      t.string :mint
      t.string :year
      t.string :image

      t.timestamps
    end
  end
end
