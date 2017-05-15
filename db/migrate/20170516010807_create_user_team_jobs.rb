class CreateUserTeamJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_team_jobs do |t|
      t.references :user, foreign_key: true
      t.references :team_introductions, foreign_key: true

      t.timestamps
    end
  end
end
