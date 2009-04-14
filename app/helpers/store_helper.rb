module StoreHelper
  def display_index_hitcount(hitcount)
    "Index Hitcount: #{pluralize(hitcount, "hit")}" if hitcount > 5
  end
end
