class DashboardController < ApplicationController
  def index
    @documents = Document.all
  end

  def setting
  end

  def politicasdegestion
    @documents = Document.all
  end
end
