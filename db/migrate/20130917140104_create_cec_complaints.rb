class CreateCecComplaints < ActiveRecord::Migration
  def change
    create_table :cec_complaints do |t|

      t.timestamps
    end
  end
end
