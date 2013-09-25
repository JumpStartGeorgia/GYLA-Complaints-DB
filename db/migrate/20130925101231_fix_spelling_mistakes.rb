class FixSpellingMistakes < ActiveRecord::Migration
  def up
    rename_column :pec_complaints, :dec_desicion_basis, :dec_decision_basis
    rename_column :pec_complaints, :court_desicion_basis, :court_decision_basis
    rename_column :pec_complaints, :appellate_desicion_basis, :appellate_decision_basis

    rename_column :dec_complaints, :dec_desicion_basis, :dec_decision_basis
    rename_column :dec_complaints, :cec_desicion_basis, :cec_decision_basis
    rename_column :dec_complaints, :appellate_desicion_basis, :appellate_decision_basis

    rename_column :cec_complaints, :cec_desicion_basis, :cec_decision_basis
    rename_column :cec_complaints, :appellate_desicion_basis, :appellate_decision_basis
  end

  def down
  end
end
