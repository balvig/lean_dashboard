require_dependency "lean_dashboard/application_controller"

module LeanDashboard
  class MetricsController < ApplicationController

    def edit
      @metric = Metric.find(params[:id])
    end

    def update
      @metric = Metric.find(params[:id])

      respond_to do |format|
        if @metric.update_attributes(metric_params)
          format.html { redirect_to [:edit, @metric], notice: 'Metric was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @metric.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /metrics/1
    # DELETE /metrics/1.json
    def destroy
      @metric = Metric.find(params[:id])
      @metric.destroy

      respond_to do |format|
        format.html { redirect_to metrics_url }
        format.json { head :no_content }
      end
    end

    private

    def metric_params
      params.require(:metric).permit!
    end
  end
end
