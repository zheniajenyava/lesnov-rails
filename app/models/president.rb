class President < ActiveRecord::Base
has_many :articles
belongs_to :sex
belongs_to :CitizenShip
def name_of_president
	"#{firstName.first}. #{lastName}"
end
end
