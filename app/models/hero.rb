class Hero < ApplicationRecord
  validates :alignment,    inclusion: { in: %w[chaos nature order] }
  validates :combat_range, inclusion: { in: %w[building melee ranged] }
  validates :gender,       inclusion: { in: %w[female male sexless] }
  validates :rarity,       inclusion: { in: %w[common rare epic legendary] }
end
