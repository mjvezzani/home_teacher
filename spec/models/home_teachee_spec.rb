require 'rails_helper'
require 'database_cleaner'

describe HomeTeachee do
  before(:each) do
    DatabaseCleaner.clean_with :truncation
    DatabaseCleaner.strategy = :transaction
  end

  context "validations" do
    before(:each) do
      @ht = HomeTeachee.create(firstname: "John",
                               lastname: "Smith",
                               email: "jsmith@smith.net")
    end

    it "is valid with a firstname, lastname, and email" do
      expect(@ht).to be_valid
    end

    it "is invalid without a firstname" do
      @ht.firstname = nil
      expect(@ht).to be_invalid
    end

    it "is invalid without a lastname" do
      @ht.lastname = nil
      expect(@ht).to be_invalid
    end

    it "is invalid without an email" do
      @ht.email = nil
      expect(@ht).to be_invalid
    end

    it "is invalid with a duplicate email" do
      ht2 = HomeTeachee.create(firstname: "James",
                               lastname: "Smith",
                               email: "jsmith@smith.net")
      expect(ht2).to be_invalid
    end
  end

  context "associations"
end
