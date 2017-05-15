class Employer::UserTeamJobController < Employer::BaseController
  
  def create
  	user = User.find_by email: params[:term] 
    @team_job = UserTeamJob.new(user_id: user.id,
  		team_introductions_id: params[:team_id] ,status: 0)
    byebug
  	if @team_job.save
    	flash.now[:success] = "success"
    	render json: {
        html_member: render_to_string(partial: "member_for_team",
          layout: false)
        }, status: :created
    else
      redirect_to root_path
    end
  end

end