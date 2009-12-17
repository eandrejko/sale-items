require File.dirname(__FILE__) + "/../lib/sale_items_report"

describe :sale_items_report do

  it "should print report in correct format" do
    expected =<<-EOS
    Sale Items Report
    ============================
    Total Items:        3
    Average Sale Price: $27.90
    Total Sale Price:   $83.70

    Five most common sizes:
    M   (100%) 
    XS  (66%)
    L   (33%)
    XL  (33%)
    
    Five most common brands:
    Juicy Couture  (66%)
    Jimmy Choo     (33%)
    EOS
    report = SaleItemsReport.new(File.join(File.dirname(__FILE__), "fixtures"))
    report.text_report.should == expected
  end

end