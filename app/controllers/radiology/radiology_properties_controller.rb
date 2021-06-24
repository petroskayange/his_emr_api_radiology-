require 'json'
class Radiology::RadiologyPropertiesController < ::ApplicationController
  def create(success_response_status: :created)
    path, value = params.require %i[path property_value]
    
      file = File.read path
      hash = JSON.parse file
      if value == 'true'
        hash['encounters']['radiology examination']['available'] = true
        hash['encounters']['view radiology results']['available'] = true
      else
        hash['encounters']['radiology examination']['available'] = false
        hash['encounters']['view radiology results']['available'] = false
      end
      File.open path , "w" do |f|
        f.puts JSON.pretty_generate hash
      end
      render json: value, status: success_response_status
  end
end
