class CyclesController < ApplicationController
  def index
    @cycles = Cycle.all 
    @public_cycles = @cycles.where(public_status: true)
  end
end
