class CsvImport

  require 'csv'

  def self.import_customers
    csv_text = File.read('/home/teakle/customers.csv').gsub("\n", "")
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        if !row.empty?
          puts "HI: #{row.to_hash}"
          customer = Customer.new
          customer.company = row["Company"]
          customer.address1 = row["Address1"]
          customer.address2 = row["Address2"]
          customer.address3 = row["Address3"]
          customer.city = row["City"]
          customer.state = row["State"]
          customer.zip = row["Zip"]
          customer.phone1 = row["Phone1"]
          customer.phone2 = row["Phone2"]
          customer.fax1 = row["Fax1"]
          customer.fax2 = row["Fax2"]
          customer.email = row["Email"]
          customer.website = row["Website"]
          customer.created_by = "import_process"
          customer.created_at = Time.now
          customer.updated_by = "import_process"
          customer.updated_at = Time.now
          customer.save
        end
    end
  end

end