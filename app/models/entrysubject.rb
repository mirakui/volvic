class Entrysubject < ActiveRecord::Base
  belongs_to :user
  belongs_to :entrycategory
  has_many :entries
end
