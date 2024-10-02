class Availability < ApplicationRecord
  belongs_to :cat

  # validates :start_on, :end_on, presence: true, uniqueness: { scope: :cat },
  #                               overlap: { scope: :cat_id, exclude_edges: %i[start_on end_on] }
  # validates :end_on, comparison: { greater_than: :start_on }

end
