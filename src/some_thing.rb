# frozen_string_literal: true

class SomeThing < ActiveRecord::Base
  enum kind: {
    main: 0,
    individual: 1,
    common: 2,
    other: -1
  }
end
