class State < ActiveRecord::Base
  # Included modules & Constants

  ### Acts as...

  ### Associations

  has_many :candidates

  # has_many, belongs_to etc. Also accepts_nested_attributes_for

  ### Validations

  ### Standard Rails Callbacks

  ### States & State Callbacks

  ### Named Scopes

  ### Attributes & Serialization
  def current
    self.state
  end

  ### Delegation

  ### Sphinx Index

  ### Class Methods

  # public ...

  # private ...

  ### Instance Methods

  # public ....

  # private ...
end
