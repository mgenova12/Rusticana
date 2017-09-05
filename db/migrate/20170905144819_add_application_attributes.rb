class AddApplicationAttributes < ActiveRecord::Migration[5.0]
  def change

   add_column :applies, :address, :string
   add_column :applies, :city, :string
   add_column :applies, :state, :string
   add_column :applies, :zip, :string
   add_column :applies, :phone_number, :string

   add_column :applies, :date_of_birth, :datetime
  
   add_column :applies, :eighteen_or_older, :string
   add_column :applies, :prevented, :string
   add_column :applies, :position, :string

   add_column :applies, :start_date, :string

   add_column :applies, :employment_salary, :string
   add_column :applies, :currently_employed, :string
   add_column :applies, :employed_where, :string
   add_column :applies, :qpplied_before, :string
  
   add_column :applies, :former_employer1, :string
   add_column :applies, :former_salery1, :string
   add_column :applies, :former_positon1, :string
   add_column :applies, :reason_for_leaving1, :string
   add_column :applies, :former_employer2, :string
   add_column :applies, :former_salery2, :string
   add_column :applies, :former_positon2, :string
   add_column :applies, :reason_for_leaving2, :string
   add_column :applies, :former_employer3, :string
   add_column :applies, :former_salery3, :string
   add_column :applies, :former_positon3, :string
   add_column :applies, :reason_for_leaving3, :string
  
   add_column :applies, :high_school, :string
   add_column :applies, :hs_years_attended, :string
   add_column :applies, :hs_graduate, :string
   add_column :applies, :college, :string
   add_column :applies, :college_years, :string
   add_column :applies, :college_graduate, :string

   add_column :applies, :reference_name1, :string
   add_column :applies, :reference_address1, :string
   add_column :applies, :reference_business1, :string
   add_column :applies, :reference_years1, :string

   add_column :applies, :reference_name2, :string
   add_column :applies, :reference_address2, :string
   add_column :applies, :reference_business2, :string
   add_column :applies, :reference_year2, :string

   add_column :applies, :reference_name3, :string
   add_column :applies, :reference_address3, :string
   add_column :applies, :reference_business3, :string
   add_column :applies, :reference_years3, :string

   add_column :applies, :special_skills, :string
   add_column :applies, :activites, :string
   add_column :applies, :military, :string
   add_column :applies, :comment, :string


  end
end
