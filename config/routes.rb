Radiology::Engine.routes.draw do
    resources :radiology, path: 'api/v1/radiology'
    resources :radiology_properties, path: 'api/v1/radiology_properties'
      
    get '/api/v1/radiology/barcode', to: 'radiology#print_barcode'
    
end
