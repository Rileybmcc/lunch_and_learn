class User < ApplicationRecord

  def self.generate_key

    letters = ["a".."z"]
    pass = []
    26.times do
      pass << letters.shuffle.first
    end
    pass
  end

end
