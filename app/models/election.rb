class Election < ActiveRecord::Base
  has_many :pec_complaints
  has_many :dec_complaints
  has_many :cec_complaints


end
