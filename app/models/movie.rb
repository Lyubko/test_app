class Movie < ApplicationRecord
  # Direct associations

  has_many   :casts,
             :dependent => :destroy

  # Indirect associations

  has_many   :actors,
             :through => :casts,
             :source => :actor

  # Validations

end
