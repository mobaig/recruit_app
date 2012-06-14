class Note < ActiveRecord::Base
  # Included modules & Constants

  ### Acts as...

  ### Associations

  belongs_to :candidate

  # has_many, belongs_to etc. Also accepts_nested_attributes_for

  ### Validations
  validates :author, :presence => true
  validates :body, :presence => true
  validates :candidate, :presence => true

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
