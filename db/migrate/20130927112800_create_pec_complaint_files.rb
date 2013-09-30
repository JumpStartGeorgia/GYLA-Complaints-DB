class CreatePecComplaintFiles < ActiveRecord::Migration
  def change
    create_table :pec_complaint_files do |t|

      t.timestamps
    end
  end
end
