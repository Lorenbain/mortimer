class AccessEntriesController < ApplicationController
  # GET /access_entries
  # GET /access_entries.xml
  def index
    @access_entries = AccessEntry.find(:all, :conditions => { :entry => params[:entry] }, :order => "created_at DESC")
    @entry = Entry.find(params[:entry])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @access_entries }
    end
  end

  # GET /access_entries/1
  # GET /access_entries/1.xml
  def show
    @access_entry = AccessEntry.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @access_entry }
    end
  end

  # GET /access_entries/new
  # GET /access_entries/new.xml
  def new
    @access_entry = AccessEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @access_entry }
    end
  end

  # GET /access_entries/1/edit
  def edit
    @access_entry = AccessEntry.find(params[:id])
  end

  # POST /access_entries
  # POST /access_entries.xml
  def create
    @access_entry = AccessEntry.new(params[:access_entry])

    respond_to do |format|
      if @access_entry.save
        flash[:notice] = 'AccessEntry was successfully created.'
        format.html { redirect_to(@access_entry) }
        format.xml  { render :xml => @access_entry, :status => :created, :location => @access_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @access_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /access_entries/1
  # PUT /access_entries/1.xml
  def update
    @access_entry = AccessEntry.find(params[:id])

    respond_to do |format|
      if @access_entry.update_attributes(params[:access_entry])
        flash[:notice] = 'AccessEntry was successfully updated.'
        format.html { redirect_to(@access_entry) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @access_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /access_entries/1
  # DELETE /access_entries/1.xml
  def destroy
    @access_entry = AccessEntry.find(params[:id])
    @access_entry.destroy

    respond_to do |format|
      format.html { redirect_to(access_entries_url) }
      format.xml  { head :ok }
    end
  end
end
