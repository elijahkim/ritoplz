class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :content, null: false

      t.timestamps
    end
  end
end
