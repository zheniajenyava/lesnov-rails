class Article < ActiveRecord::Base
 belongs_to :language
 belongs_to :rule
 belongs_to :president
 has_and_belongs_to_many :productions
 belongs_to :domain
end
