class UserTeamJob < ApplicationRecord
  belongs_to :user
  belongs_to :team_introductions
end
