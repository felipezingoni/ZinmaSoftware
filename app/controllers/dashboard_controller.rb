class DashboardController < ApplicationController
  set_tab :dashboard, :instructivos, :politicasdegestion, :procedimientos

  def index
    @documents = Document.all
  end

  def setting
  end

  def politicasdegestion
    @documents = Document.all
  end

  def instructivos

  end

  def procedimientos

  end
end
