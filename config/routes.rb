Radiology::Engine.routes.draw do
    resources :radiology, path: 'api/v1/radiology/radiology_orders'
    resources :radiology_properties, path: 'api/v1/radiology_properties'
      
    get '/api/v1/radiology/barcode', to: 'radiology#print_order_label'
    
end
