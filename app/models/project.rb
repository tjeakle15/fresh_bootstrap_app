class Project < TimeTrackerRecord
  belongs_to :customer
  has_many :tasks
end
