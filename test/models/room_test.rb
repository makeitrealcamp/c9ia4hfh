# == Schema Information
#
# Table name: rooms
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  beds            :integer
#  guests          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image_url       :string
#  price_per_night :decimal(, )
#

require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
