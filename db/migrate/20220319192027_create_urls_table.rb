class CreateUrlsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :key
      t.string :real_link
      t.integer :num_hits
      t.timestamps
    end
  end
end
