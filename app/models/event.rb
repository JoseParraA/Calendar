# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :text
#  date        :text
#  place_id    :integer
#  description :text
#  user_id     :integer
#  time_zone   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
  has_and_belongs_to_many :users, :optional => true
  belongs_to :place
end
