class AddStatusToUserTeamJob < ActiveRecord::Migration[5.0]
  def change
    add_column :user_team_jobs, :status, :integer
  end
end
