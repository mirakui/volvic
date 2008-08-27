class Entry < ActiveRecord::Base
  belongs_to :user
  belongs_to :wallet, :foreign_key=>'from_wallet_id'
  belongs_to :wallet, :foreign_key=>'to_wallet_id'
  belongs_to :entrysubject
end
