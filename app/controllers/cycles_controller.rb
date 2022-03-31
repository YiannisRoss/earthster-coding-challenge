class CyclesController < ApplicationController
  def index
    @cycles = Cycle.all
  end
end
