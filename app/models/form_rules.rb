class FormRules < ActiveRecord::Base
has_many :atrticles
	def name_with_initial
	    "#{name}"
	end
end
