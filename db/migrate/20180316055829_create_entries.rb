class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :headline, limit: 100
      t.string :dropline, limit: 200
      t.string :body, limit: 500

      t.timestamps
    end
  end
end
