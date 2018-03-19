class AddEntryRefToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :entry, foreign_key: true
  end
end
