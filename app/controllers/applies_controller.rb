class AppliesController < ApplicationController
  def new 
    @apply = Apply.new
  end

  def create 
    @application = Apply.new(application_params)

    @application.save
  end

  private

  def application_params
    params.require(:apply).permit(:first_name, :last_name, :address,:city,:state,:zip,:phone_number,:date_of_birth,:eighteen_or_older,:prevented,:position,:start_date,:employment_salary,:currently_employed,:employed_where,:qpplied_before,:former_employer1,:former_salery1,:former_positon1,:reason_for_leaving1,:former_employer2,:former_salery2,:former_positon2,:reason_for_leaving2,:former_employer3,:former_salery3,:former_positon3,:reason_for_leaving3,:high_school,:hs_years_attended,:hs_graduate,:college,:college_years,:college_graduate,:reference_name1,:reference_address1,:reference_business1,:reference_years1,:reference_name2,:reference_address2,:reference_business2,:reference_year2,:reference_name3,:reference_address3,:reference_business3,:reference_years3,:special_skills,:activites,:military,:comment)

  end


end
