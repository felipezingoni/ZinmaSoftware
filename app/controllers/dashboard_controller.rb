class DashboardController < ApplicationController
  def index
  end

  def setting
  end

  def politicasdegestion
    @documents = Document.all
  end
end
