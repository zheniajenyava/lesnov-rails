class President < ActiveRecord::Base
has_many :articles
def name_of_president
	"#{firstName.first}. #{lastName}"
end
end
