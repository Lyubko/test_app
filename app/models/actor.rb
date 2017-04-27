class Actor < ApplicationRecord
  # Direct associations

  has_many   :casts,
             :dependent => :destroy

  # Indirect associations

  has_many   :movies,
             :through => :casts,
             :source => :movie

  # Validations

end
