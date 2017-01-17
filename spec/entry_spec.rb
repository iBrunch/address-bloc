<<<<<<< HEAD
require_relative '../models/entry'
 RSpec.describe Entry do
   describe "attributes" do
     let(:entry) { Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com') }

     it "responds to name" do
       expect(entry).to respond_to(:name)
     end

     it "reports its name" do
       expect(entry.name).to eq('Ada Lovelace')
     end

     it "responds to phone number" do
       expect(entry).to respond_to(:phone_number)
     end

     it "reports its phone_number" do
       expect(entry.phone_number).to eq('010.012.1815')
     end

     it "responds to email" do
       expect(entry).to respond_to(:email)
     end

     it "reports its email" do
       expect(entry.email).to eq('augusta.king@lovelace.com')
     end
   end

   describe "#{to_s}" do
     it "prints an entry as a string" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
       expect(entry.to_s).to eq(expected_string)
=======
require_relative '../models/address_book'

 RSpec.describe AddressBook do
   describe "attributes" do
     it "responds to entries" do
       book = AddressBook.new
       expect(book).to respond_to(:entries)
     end

     it "initializes entries as an array" do
       book = AddressBook.new
       expect(book.entries).to be_an(Array)
     end

     it "initializes entries as empty" do
       book = AddressBook.new
       expect(book.entries.size).to eq(0)
      end
    end

   describe "#add_entry" do
     it "adds only one entry to the address book" do
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

       expect(book.entries.size).to eq(1)
     end

     it "adds the correct information to entries" do
       book = AddressBook.new
       book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       new_entry = book.entries[0]

       expect(new_entry.name).to eq('Ada Lovelace')
       expect(new_entry.phone_number).to eq('010.012.1815')
       expect(new_entry.email).to eq('augusta.king@lovelace.com')
>>>>>>> 23cc29b86579a5ac6eac8985bf89a55f7a0f3316
     end
   end
 end
