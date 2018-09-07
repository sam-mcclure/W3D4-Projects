# == Schema Information
#
# Table name: responses
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  answer_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ApplicationRecord 
  
  validates :user_id, :answer_id, presence: true
  validate :not_duplicate_response
  
  def not_duplicate_response
    
  end
  
  def sibling_responses
    self.question.responses.where.not(responses: {id: self.id})
  end
  
  def respondent_already_answered?
    
  end 

  
  belongs_to :respondent,
    primary_key: :id, 
    foreign_key: :user_id, 
    class_name: 'User'
    
  belongs_to :answer_choice,
    primary_key: :id, 
    foreign_key: :answer_id,
    class_name: :AnswerChoice
    
  has_one :question,
    through: :answer_choice,
    source: :question 

end
