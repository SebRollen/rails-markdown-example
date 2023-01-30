# frozen_string_literal: true

class PagesController < ApplicationController
  include HighVoltage::StaticPage

  private

  def page_finder_factory
    PageFinder
  end
end
