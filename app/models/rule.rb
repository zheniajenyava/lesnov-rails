class Rule < ActiveRecord::Base
has_many :articles
def name_with_initial
            "#{name}"
        end

end
