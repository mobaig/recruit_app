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
  default_scope :order => 'created_at DESC'

  ### Attributes & Serialization

  ### Delegation

  ### Sphinx Index

  ### Class Methods

  # public ...

  # private ...

  ### Instance Methods

  # public ....

  # private ...
end
