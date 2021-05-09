# frozen_string_literal: true

module Radiology
  class LabelsController < ApplicationController
    skip_before_action :authenticate

    def print_order_label
      label = service.print_radiology_barcode(params[:accession_number],params[:patient_national_id], params[:patient_name], params[:radio_order], params[:date_created])
      send_data(label.print, type: 'application/label; charset=utf-8',
                             stream: false,
                             filename: "#{SecureRandom.hex(24)}.lbl",
                             disposition: 'inline')
    end
  end
end
