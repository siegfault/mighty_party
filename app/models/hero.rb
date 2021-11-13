# == Schema Information
#
# Table name: heroes
#
#  id              :bigint           not null, primary key
#  mighty_party_id :bigint
#  name            :text
#  rarity          :text
#  alignment       :text
#  gender          :text
#  combat_range    :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Hero < ApplicationRecord
  validates :alignment,    inclusion: { in: %w[chaos nature order] }
  validates :combat_range, inclusion: { in: %w[building melee ranged] }
  validates :gender,       inclusion: { in: %w[female male sexless] }
  validates :rarity,       inclusion: { in: %w[common rare epic legendary] }
end
