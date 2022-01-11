require 'csv'

bom = "\uFEFF"

CSV.generate(bom) do |csv|

  csv_column_names = %w(売上日 店舗名 申請者 調剤売上)
  csv << csv_column_names
  @records.each do |record|
    csv_column_values = [
      record.date,
      record.store,
      record.applicant,
      record.dispensing_fee,
    ]
    csv << csv_column_values
  end
end