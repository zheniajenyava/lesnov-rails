class Production < ActiveRecord::Base
has_and_belongs_to_many :articles
def name_with_initial
        "#{name}"
end
end
