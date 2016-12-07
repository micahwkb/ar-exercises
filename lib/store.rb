class Store < ActiveRecord::Base
  has_many :employees

  validates :name,
            presence: true,
            length: { minimum: 2 }
  validates :annual_revenue,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 0
            }
  validate :must_carry_clothing

  def must_carry_clothing
    if !(mens_apparel || womens_apparel)
      errors.add(:apparel, "- no mens' or womens' clothing available")
    end
  end
end
