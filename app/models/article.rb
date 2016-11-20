class Article < ActiveRecord::Base
 belongs_to :language
 belongs_to :formRules
 belongs_to :presidents
 has_and_belongs_to_many :productions
end
