class Entrycategory < ActiveRecord::Base
  belongs_to :user
  has_many :entrysubjects
end
