class OpenDataList
  include Enumerable
  def initialize(rows)
    @rows = rows
  end

  def each
    @rows.each do |row|
      order_item = OpenStruct.new(row)
      yield(order_item)
    end
  end
end