class Employer::JobTeamController < Employer::BaseController
  
  def index
  	if params[:type]
      listarr = params[:array_id]

      listarr = listarr.split(",").map(&:to_i) if listarr.class == String

      sort_by = params[:sort].nil? ? "ASC" : params[:sort]
      @teams = @company.teams.includes(:images)
        .filter(listarr, sort_by, params[:type]).page(params[:page])
        .per Settings.employer.jobs.per_page
    else
      @teams = @company.teams.includes(:images)
        .page(params[:page]).per Settings.employer.jobs.per_page
    end

    if request.xhr?
      render json: {
        html_job: render_to_string(partial: "team", locals: {jobs: @teams},
          layout: false),
        pagination_job: render_to_string(partial: "paginate", layout: false)
      }
    else
      respond_to do |format|
        format.html
      end
    end
  end
 
  def create
  	byebug
  end
end
