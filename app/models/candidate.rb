class Candidate < ActiveRecord::Base
  # Included modules & Constants

  ### Acts as...

  ### Associations
  belongs_to :state
  belongs_to :agent
  belongs_to :job

  has_many :notes

  # has_many, belongs_to etc. Also accepts_nested_attributes_for

  ### Validations
  validates :name, :presence => true
  validates :state, :presence => true
  validates :salary_expectation, :numericality => {:only_integer => true, :allow_nil => true, :message => 'please enter numbers only'}

  ### Standard Rails Callbacks
  before_save :strip_http_from_attributes

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

  private
  def strip_http_from_attributes
    self.attributes.each do |k, v|
      self[k] = v.gsub(/https?:\/\//, '') if v.class == String
    end
  end
end
