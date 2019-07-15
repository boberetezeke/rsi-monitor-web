class AddMonitorNameToConnectionTests < ActiveRecord::Migration[5.2]
  def change
    add_column :connection_tests, :monitor_name, :string
  end
end
