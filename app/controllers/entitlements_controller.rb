class EntitlementsController < ApplicationController
  # GET /entitlements
  # GET /entitlements.xml
  def index
    @entitlements = Entitlement.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entitlements }
    end
  end

  # GET /entitlements/1
  # GET /entitlements/1.xml
  def show
    @entitlement = Entitlement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entitlement }
    end
  end

  # GET /entitlements/new
  # GET /entitlements/new.xml
  def new
    @entitlement = Entitlement.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @entitlement }
    end
  end

  # GET /entitlements/1/edit
  def edit
    @entitlement = Entitlement.find(params[:id])
  end

  # POST /entitlements
  # POST /entitlements.xml
  def create
    @entitlement = Entitlement.new(params[:entitlement])

    respond_to do |format|
      if @entitlement.save
        format.html { redirect_to(@entitlement, :notice => 'Entitlement was successfully created.') }
        format.xml  { render :xml => @entitlement, :status => :created, :location => @entitlement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @entitlement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /entitlements/1
  # PUT /entitlements/1.xml
  def update
    @entitlement = Entitlement.find(params[:id])

    respond_to do |format|
      if @entitlement.update_attributes(params[:entitlement])
        format.html { redirect_to(@entitlement, :notice => 'Entitlement was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @entitlement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entitlements/1
  # DELETE /entitlements/1.xml
  def destroy
    @entitlement = Entitlement.find(params[:id])
    @entitlement.destroy

    respond_to do |format|
      format.html { redirect_to(entitlements_url) }
      format.xml  { head :ok }
    end
  end
end
