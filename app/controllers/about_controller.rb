class AboutController < ApplicationController
  def index
    @employments = Employment.active
    @educations = Education.active
    @technology_types = TechnologyType.includes(:technologies)
  end
end
