# == Schema Information
#
# Table name: responses
#
#  id            :bigint(8)        not null, primary key
#  answer_id     :integer
#  respondent_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Response < ApplicationRecord

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_id,
    class_name: :AnswerChoice

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :respondent_id,
    class_name: :User

end
