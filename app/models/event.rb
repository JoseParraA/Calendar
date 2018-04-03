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
  belongs_to :user, :optional => true
  belongs_to :place, :optional => true
end
