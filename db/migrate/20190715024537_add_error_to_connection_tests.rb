class AddErrorToConnectionTests < ActiveRecord::Migration[5.2]
  def change
    add_column :connection_tests, :error, :string
    add_column :connection_tests, :backtrace, :text
  end
end
