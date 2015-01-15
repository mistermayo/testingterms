class Term
  @@terms = []
  define_method(:initialize) do |word, definition|
    @store_word = word
    @definition = definition
    @id = @@terms.length().+(1) #keep the 1?
  end

  define_method(:store_word) do
    @store_word
  end

  define_method(:definition) do
    @definition
  end

  define_singleton_method(:all) do
    @@terms
  end

  define_method(:save) do
    @@terms.push(self)
  end

  define_singleton_method(:clear) do
    @@terms = []
  end


  define_singleton_method(:find) do |identification|
    found_term = nil
    @@terms.each() do |term|
      if term.store_word().eql?(identification)
        found_term = term
      end
    end
    found_term
  end
end
