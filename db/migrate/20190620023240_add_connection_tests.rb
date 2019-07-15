class AddConnectionTests < ActiveRecord::Migration[5.2]
  def change
    create_table :connection_tests do |t|
      t.string  :server
      t.float   :latency
      t.float   :download_rate
      t.float   :upload_rate

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
