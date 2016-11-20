class Article < ActiveRecord::Base
 belongs_to :language
 belongs_to :formRules
 belongs_to :presidents
end
