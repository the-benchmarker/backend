
module Models

  class Language

    attr_accessor :label
    attr_accessor :frameworks

    def initialize(label)
      @label = label
      @frameworks = []
    end

  end
end
