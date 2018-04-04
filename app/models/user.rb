# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  user_id         :integer
#  email           :text
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  has_many :events

end
