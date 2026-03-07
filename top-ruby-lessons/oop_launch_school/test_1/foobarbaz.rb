class Invoice
  # class method
  def self.print_out
    p "Printed out invoice"
  end
  
  # instance method
  def convert_to_pdf
    p "Converted to PDF"
  end
end

i = Invoice.new
i.convert_to_pdf