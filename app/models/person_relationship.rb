class PersonRelationship < ActiveRecord::Base
  belongs_to :person
  belongs_to :child, class_name:"Person"
end
