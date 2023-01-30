# frozen_string_literal: true

class PagesController < ApplicationController
  include HighVoltage::StaticPage
  layout :layout_for_page

  private

  def resource
    params[:id].split('/').first
  end

  def layout_for_page
    case resource
    when 'blog'
      'pages/blog_post'
    else
      'application'
    end
  end

  def page_finder_factory
    PageFinder
  end
end
