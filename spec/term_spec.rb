require('rspec')
require('term')

describe(Term) do
  before() do
    Term.clear()
  end

 describe("#store_word") do
   it("stores the name of the word") do
    test_term = Term.new("cat", "furry")
    test_term.save()
    expect(test_term.store_word()).to(eq("cat"))
  end
end

 describe("#definition") do
   it("returns the definition of the word") do
    test_term = Term.new("cat", "furry")
    test_term.save()
    expect(test_term.definition()).to(eq("furry"))
  end
end

  describe("#save") do
    it("adds a term to the array of saved terms") do
      test_term = Term.new("cat", "furry")
      test_term.save()
      expect(Term.all()).to(eq([test_term]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Term.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved terms") do
      Term.new("cat", "furry").save()
      Term.clear()
      expect(Term.all()).to(eq([]))
    end
  end
  describe(".find") do
    it("returns the word and definition") do
      test_term = Term.new("cat")
      test_term.save()
      test_term2 = Term.new("")
      test_term2.save()
      expect(Term.find(test_term.id())).to(eq(test_term))
    end
  end
end
