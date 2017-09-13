class FixApplySpelling < ActiveRecord::Migration[5.0]
  def change
    rename_column :applies, :comment, :comments
    rename_column :applies, :qpplied_before, :applied_before
    rename_column :applies, :reference_year2, :reference_years2

  end
end
