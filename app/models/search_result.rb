class SearchResult < ActiveRecord::Base
  belongs_to :user_search
  belongs_to :vegetable
end
