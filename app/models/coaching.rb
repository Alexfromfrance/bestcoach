class Coaching < ApplicationRecord
  has_one :client, class_name:"User", foreign_key: "client_id"
  has_one :coach, class_name:"User", foreign_key: "coach_id"
end
