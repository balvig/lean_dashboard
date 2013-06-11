require_dependency "lean_dashboard/application_controller"

module LeanDashboard
  class HypothesesController < ApplicationController

    def index
      @hypotheses = Hypothesis.order('id DESC')

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @hypotheses }
      end
    end

    # GET /hypotheses/1
    # GET /hypotheses/1.json
    def show
      @hypothesis = Hypothesis.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @hypothesis }
      end
    end

    # GET /hypotheses/new
    # GET /hypotheses/new.json
    def new
      @hypothesis = Hypothesis.new
      2.times { @hypothesis.metrics.build }

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @hypothesis }
      end
    end

    # GET /hypotheses/1/edit
    def edit
      @hypothesis = Hypothesis.find(params[:id])
    end

    # POST /hypotheses
    # POST /hypotheses.json
    def create
      @hypothesis = Hypothesis.new(hypothesis_params)

      respond_to do |format|
        if @hypothesis.save
          format.html { redirect_to hypotheses_path, notice: 'Hypothesis was successfully created.' }
          format.json { render json: @hypothesis, status: :created, location: @hypothesis }
        else
          format.html { render action: "new" }
          format.json { render json: @hypothesis.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /hypotheses/1
    # PUT /hypotheses/1.json
    def update
      @hypothesis = Hypothesis.find(params[:id])

      respond_to do |format|
        if @hypothesis.update_attributes(hypothesis_params)
          format.html { redirect_to hypotheses_path, notice: 'Hypothesis was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @hypothesis.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /hypotheses/1
    # DELETE /hypotheses/1.json
    def destroy
      @hypothesis = Hypothesis.find(params[:id])
      @hypothesis.destroy

      respond_to do |format|
        format.html { redirect_to hypotheses_url }
        format.json { head :no_content }
      end
    end

    private

    def hypothesis_params
      params.require(:hypothesis).permit!
    end
  end
end
