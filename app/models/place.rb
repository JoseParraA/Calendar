# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  name       :text
#  facilities :text
#  event_id   :integer
#  time_zone  :integer
#  location   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Place < ApplicationRecord
  has_many :events
  has_many :users, :through => :events
end
