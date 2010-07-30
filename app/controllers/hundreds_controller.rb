require 'pusher'

Pusher.app_id = '265'
Pusher.key = '6cbe614275897cd73062'
Pusher.secret = '32c833b518e0b05bde8a'

class HundredsController < ApplicationController
  # GET /hundreds
  # GET /hundreds.xml
  def index
    @hundreds = Hundred.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hundreds }
    end
  end

  # GET /hundreds/1
  # GET /hundreds/1.xml
  def show
    @hundred = Hundred.find(params[:id])
    
    Pusher['hundreds_'+@hundred.id.to_s].trigger('user-joined', current_user.login) unless current_user.nil?

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hundred }
    end
  end

  # GET /hundreds/new
  # GET /hundreds/new.xml
  def new
    @hundred = Hundred.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hundred }
    end
  end

  # GET /hundreds/1/edit
  def edit
    @hundred = Hundred.find(params[:id])
  end

  # POST /hundreds
  # POST /hundreds.xml
  def create
    @hundred = Hundred.new(params[:hundred])
    
    @hundred.winning_number = rand(100)

    respond_to do |format|
      if @hundred.save
        format.html { redirect_to(@hundred, :notice => 'Hundred was successfully created.') }
        format.xml  { render :xml => @hundred, :status => :created, :location => @hundred }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hundred.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hundreds/1
  # PUT /hundreds/1.xml
  def update
    @hundred = Hundred.find(params[:id])

    respond_to do |format|
      if @hundred.update_attributes(params[:hundred])
        format.html { redirect_to(@hundred, :notice => 'Hundred was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hundred.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hundreds/1
  # DELETE /hundreds/1.xml
  def destroy
    @hundred = Hundred.find(params[:id])
    @hundred.destroy

    respond_to do |format|
      format.html { redirect_to(hundreds_url) }
      format.xml  { head :ok }
    end
  end
  
  def place_bet
    bet = Bet.new(:link_id => params[:id], :guess => params[:guess], :game => 'hundred')
    
    if bet.save
      hundred = Hundred.find(params[:id])
      
      hundred.players = 0 unless !hundred.players.nil?
      hundred.players = hundred.players + 1
      hundred.save
      response = Bet.find_all_by_link_id_and_game(params[:id], 'hundred').length
    else
      response = "Unable to place bet."
    end
    
    return response
  end
  
  private

    def current_user
      @_current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
    end
end