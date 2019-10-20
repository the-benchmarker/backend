
module Models

  class Metric

    attr_accessor :id
    attr_accessor :label
    attr_accessor :value

    def initialize(id)
      @id = id
    end

  end
end
