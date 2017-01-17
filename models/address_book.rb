require_relative 'entry'

class AddressBook
  attr_reader :entries
<<<<<<< HEAD

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    index = 0
    entries.each do |entry|
      if name < entry.name
        break
      end
        index += 1
    end
    entries.insert(index, Entry.new(name, phone_number, email))
  end
end
  describe "#add_entry" do
    it "adds only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

      expect(book.entriez.size).to eq(1)
    end

    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      new_entry = book.entries[0]

      expect(new_entry.name).to eq('Ada Lovelace')
      expect(new_entry.phone_number).to eq('010.012.1815')
      expect(new_entry.email).to eq('augusta.king@lovelace.com')
    end
  end
=======
  def initialize
    @entries = []
end

def add_entry(name, phone_number, email)
  index = 0
  entries.each do |entry|
    if name < entry.name
      break
    end
      index+= 1
  end
  entries.insert(index, Entry.new(name, phone_number, email))
  end
end
>>>>>>> 23cc29b86579a5ac6eac8985bf89a55f7a0f3316
