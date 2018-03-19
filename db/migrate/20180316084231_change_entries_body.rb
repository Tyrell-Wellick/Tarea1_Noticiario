class ChangeEntriesBody < ActiveRecord::Migration[5.1]
  def up
    change_column :entries, :body, :text
  end
  def down
    change_column :entries, :body, :string
  end
end
