class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
