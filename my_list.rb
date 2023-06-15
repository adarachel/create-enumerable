require_relative 'my_enumerable'

class MyList
    include MyEnumerable

    attr_reader :list

    def initialize(*elements)
      @list = elements
    end

  def each
    @list.each { |element| yield(element) }
  end
end
  