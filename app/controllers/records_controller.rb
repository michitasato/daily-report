

class RecordsController < ApplicationController
  require 'csv'

  def new
  end

  def index
    @records = Record.all
    respond_to do |format|
      format.html
      format.csv { send_data render_to_string, type: 'text/csv; charset=shift_jis', filename: "売上日報一覧表.csv" }
    end
  end



  def create
    @record = Record.new(store: params[:store],
                         date: params[:date],
                         applicant: params[:applicant],
                         dispensing_fee: params[:dispensing_fee]
                         )
    @record.save
    redirect_to("/")
  end
end
