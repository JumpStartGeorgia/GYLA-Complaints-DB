class CreateDecComplaints < ActiveRecord::Migration
  def change
    create_table :dec_complaints do |t|

      t.timestamps
    end
  end
end
