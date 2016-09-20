class WhateveraskjhdasdksController < ApplicationController
  before_action :set_whateveraskjhdasdk, only: [:show, :edit, :update, :destroy]

  # GET /whateveraskjhdasdks
  # GET /whateveraskjhdasdks.json
  def index
    @whateveraskjhdasdks = Whateveraskjhdasdk.all
  end

  # GET /whateveraskjhdasdks/1
  # GET /whateveraskjhdasdks/1.json
  def show
  end

  # GET /whateveraskjhdasdks/new
  def new
    @whateveraskjhdasdk = Whateveraskjhdasdk.new
  end

  # GET /whateveraskjhdasdks/1/edit
  def edit
  end

  # POST /whateveraskjhdasdks
  # POST /whateveraskjhdasdks.json
  def create
    @whateveraskjhdasdk = Whateveraskjhdasdk.new(whateveraskjhdasdk_params)

    respond_to do |format|
      if @whateveraskjhdasdk.save
        format.html { redirect_to @whateveraskjhdasdk, notice: 'Whateveraskjhdasdk was successfully created.' }
        format.json { render :show, status: :created, location: @whateveraskjhdasdk }
      else
        format.html { render :new }
        format.json { render json: @whateveraskjhdasdk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whateveraskjhdasdks/1
  # PATCH/PUT /whateveraskjhdasdks/1.json
  def update
    respond_to do |format|
      if @whateveraskjhdasdk.update(whateveraskjhdasdk_params)
        format.html { redirect_to @whateveraskjhdasdk, notice: 'Whateveraskjhdasdk was successfully updated.' }
        format.json { render :show, status: :ok, location: @whateveraskjhdasdk }
      else
        format.html { render :edit }
        format.json { render json: @whateveraskjhdasdk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whateveraskjhdasdks/1
  # DELETE /whateveraskjhdasdks/1.json
  def destroy
    @whateveraskjhdasdk.destroy
    respond_to do |format|
      format.html { redirect_to whateveraskjhdasdks_url, notice: 'Whateveraskjhdasdk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whateveraskjhdasdk
      @whateveraskjhdasdk = Whateveraskjhdasdk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whateveraskjhdasdk_params
      params.require(:whateveraskjhdasdk).permit(:caption)
    end
end
