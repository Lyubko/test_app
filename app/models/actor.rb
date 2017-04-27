class Actor < ApplicationRecord
  # Direct associations

  has_many   :casts,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
