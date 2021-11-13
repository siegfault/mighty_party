# frozen_string_literal: true

class HeroImport # rubocop:disable Style/Documentation
  require 'active_support'
  require 'active_support/core_ext'
  require 'httparty'
  require 'nokogiri'

  require_relative '../app/models/hero'

  def import
    heroes.each do |hero|
      Hero.create!(hero)
    end
  end

  private

  def heroes
    parsed.css("tbody tr:has(td)").map do |hero|
      children = hero.element_children.map(&:text).map(&:strip)

      {
        mighty_party_id: children[0],
        name: children[1],
        rarity: children[3].downcase,
        alignment: children[4].downcase,
        gender: children[5].downcase,
        combat_range: children[6].downcase
      }
    end
  end

  def parsed
    @parsed ||= Nokogiri.parse(hero_list)
  end

  def hero_list
    HTTParty.get('https://mightyparty.fandom.com/wiki/Hero_List').body
  end
end

HeroImport.new.import
