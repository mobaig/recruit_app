class Candidate < ActiveRecord::Base
  # Included modules & Constants

  ### Acts as...

  ### Associations

  belongs_to :state
  has_many :notes

  # has_many, belongs_to etc. Also accepts_nested_attributes_for

  ### Validations
  validates :name, :presence => true
  validates :state, :presence => true
  ### Standard Rails Callbacks

  ### States & State Callbacks

  ### Named Scopes
  default_scope :order => 'state_id ASC'

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
