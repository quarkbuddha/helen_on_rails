class Gtd::QueuesController < ApplicationController
  before_action :set_gtd_queue, only: [:show, :edit, :update, :destroy]

  # GET /gtd/queues
  # GET /gtd/queues.json
  def index
    @gtd_queues = Gtd::Queue.where(user: current_user.id)
  end

  # GET /gtd/queues/1
  # GET /gtd/queues/1.json
  def show
  end

  # GET /gtd/queues/new
  def new
    @gtd_queue = Gtd::Queue.new
  end

  # GET /gtd/queues/1/edit
  def edit
  end

  # POST /gtd/queues
  # POST /gtd/queues.json
  def create
    @gtd_queue = Gtd::Queue.new(gtd_queue_params)
    @gtd_queue.user = current_user.id

    respond_to do |format|
      if @gtd_queue.save
        format.html { redirect_to @gtd_queue, notice: 'Queue was successfully created.' }
        format.json { render :show, status: :created, location: @gtd_queue }
      else
        format.html { render :new }
        format.json { render json: @gtd_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gtd/queues/1
  # PATCH/PUT /gtd/queues/1.json
  def update
    respond_to do |format|
      if @gtd_queue.update(gtd_queue_params)
        format.html { redirect_to @gtd_queue, notice: 'Queue was successfully updated.' }
        format.json { render :show, status: :ok, location: @gtd_queue }
      else
        format.html { render :edit }
        format.json { render json: @gtd_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gtd/queues/1
  # DELETE /gtd/queues/1.json
  def destroy
    @gtd_queue.destroy
    respond_to do |format|
      format.html { redirect_to gtd_queues_url, notice: 'Queue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gtd_queue
      @gtd_queue = Gtd::Queue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gtd_queue_params
      params.require(:gtd_queue).permit(:id, :name, :description)
    end
end
