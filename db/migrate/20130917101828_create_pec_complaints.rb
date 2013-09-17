class CreatePecComplaints < ActiveRecord::Migration
  def change
    create_table :pec_complaints do |t|

      t.timestamps
    end
  end
end
