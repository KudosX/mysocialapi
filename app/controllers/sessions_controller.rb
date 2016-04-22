class SessionsController < ApplicationController

  get "/auth/:provider/callback" => "sessions#create"

end
