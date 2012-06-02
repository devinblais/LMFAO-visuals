class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name
      t.string :src
      t.boolean :played

      t.timestamps
    end
  end
end
