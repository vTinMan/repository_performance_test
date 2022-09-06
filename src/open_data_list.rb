# frozen_string_literal: true

class OpenDataList
  include Enumerable
  def initialize(rows)
    @rows = rows
  end

  def each
    @rows.each do |row|
      # rubocop:disable Style/OpenStructUse
      order_item = OpenStruct.new(row)
      # rubocop:enable Style/OpenStructUse
      yield(order_item)
    end
  end
end
