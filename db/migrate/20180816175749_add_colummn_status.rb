class AddColummnStatus < ActiveRecord::Migration[5.2]
  def change
    add_column  :notes,:status, :string, default: "todo"
  end
end
