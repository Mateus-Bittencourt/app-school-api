class AddKindToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :kind, :string, null: false, default: 'student'
    add_column :users, :full_name, :string # , null: false
  end
end