class RecordsController < ApplicationController
  def new
  end

  def index
    @records = Record.all
  end
end
