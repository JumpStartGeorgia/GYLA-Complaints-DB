class CreateDecComplaintFiles < ActiveRecord::Migration
  def change
    create_table :dec_complaint_files do |t|

      t.timestamps
    end
  end
end
