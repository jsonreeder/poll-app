# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  body       :string           not null
#  poll_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base
  belongs_to :poll,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Poll
end
