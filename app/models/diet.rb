class Diet < ActiveRecord::Base
  self.table_name = "diet"
	belongs_to :univ
	validates :univ_id, :uniqueness => { :scope => [:name, :date, :time] }
end
