class Tab < ActiveRecord::Base
  # attr_accessible :title, :body
  self.table_name = "tbl_gnc_tabs"    
  def update
    self.gsub(/'/,'"')
  end
  def as_json(options={})
    json = super(options)
    json['description1'] = JSON.parse(json['description1'].gsub(/'/,'"')) if json['description1']
    json
  end  
end
