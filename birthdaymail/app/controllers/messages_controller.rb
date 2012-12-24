	class MessagesController < ApplicationController
  # GET /messages
  # GET /messages.json
  before_filter :authenticate_user!, :except => [:show, :index]
  
end

