class RecordsController < ApplicationController
  def new
  end

  def index
    @records = Record.all
  end

  def create
    @record = Record.new(store: params[:store],
                         date: params[:date],
                         applicant: params[:applicant],
                         dispensing_fee: params[:dispensing_fee]
                         )
    @record.save
    redirect_to("/records/index")
  end
end
