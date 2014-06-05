class UserSearch < ActiveRecord::Base
  belongs_to :user
  belongs_to :vegetable

  has_many   :search_results, dependent: :destroy
end
