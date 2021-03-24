module Admin
  class StatisticalsController < AdminBaseController
    def index
      @statisticals = Statistical.order("created_at asc").limit(6)
    end
  end
end
