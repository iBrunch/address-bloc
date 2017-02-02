require_relative '../models/address_book'

 RSpec.describe AddressBook do
   let(:book) {AddressBook.new}

  def check_entry(entry, expected_name, expected_number, expected_email)
    expect(entry.name).to eq expected_name
    expect(entry.phone_number).to eq expected_number
    expect(entry.email).to eq expected_email
  end

  def add_entries
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
  end

   context "attributes" do
     it "responds to entries" do
       expect(book).to respond_to(:entries)
     end

     it "initializes entries as an array" do
       expect(book.entries).to be_an(Array)
     end

     it "initializes entries as empty" do
       expect(book.entries.size).to eq(0)
      end
    end

   context "#add_entry" do
     it "adds only one entry to the address book" do
       add_entries
       expect(book.entries.size).to eq(1)
     end

     it "adds the provided information to entries" do
       add_entries
       new_entry = book.entries[0]
       expect(new_entry.name).to eq('Ada Lovelace')
       expect(new_entry.phone_number).to eq('010.012.1815')
       expect(new_entry.email).to eq('augusta.king@lovelace.com')
     end
   end

   context "#remove_entry" do
     it "removes only one entry from the address book" do
       book.add_entry('Sam P. Le', '555.555.5555', 'sample@email.com')

       name = "Ada Lovelace"
       phone_number = "010.012.1815"
       email = "augusta.king@lovelace.com"
       book.add_entry(name, phone_number, email)

       expect(book.entries.size).to eq 2
         book.remove_entry(name, phone_number, email)
         expect(book.entries.size).to eq 1
         expect(book.entries.first.name).to eq("Sam P. Le")
       end
     end

 end
