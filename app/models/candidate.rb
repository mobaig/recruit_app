class Candidate < ActiveRecord::Base
  # Included modules & Constants

  ### Acts as...

  ### Associations

  belongs_to :state

  # has_many, belongs_to etc. Also accepts_nested_attributes_for

  ### Validations
  validates  :name, :presence => false
  validates  :state_id, :presence => true
  ### Standard Rails Callbacks

  ### States & State Callbacks

  ### Named Scopes

  ### Attributes & Serialization
  mount_uploader :cv, CvUploader

  ### Delegation

  ### Sphinx Index

  ### Class Methods

  # public ...

  # private ...

  ### Instance Methods

  # public ....

  # private ...
end
