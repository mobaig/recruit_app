class Job < ActiveRecord::Base
  # Included modules & Constants

  ### Acts as...

  ### Associations
  has_many :candidates

  ### Validations
  validates :title, :presence => true
  validates :open, :inclusion => {:in => [true, false], :default => false}

  ### Standard Rails Callbacks

  ### States & State Callbacks

  ### Named Scopes

  ### Attributes & Serialization

  ### Delegation

  ### Sphinx Index

  ### Class Methods

  # public ...

  # private ...

  ### Instance Methods

  # public ....

  # private
end
