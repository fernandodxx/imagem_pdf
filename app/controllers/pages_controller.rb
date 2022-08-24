class PagesController < ApplicationController
  def home; end

  

  def download
    pdf = Prawn::Document.new
    pdf.text 'Hello World'
    send_data(pdf.render, filename: 'hello.pdf', type: 'application/pdf')
  end

  def preview
    pdf = Prawn::Document.new
    pdf.text 'preview'
    pdf.start_new_page
    pdf.text 'This is um new page'
    send_data(pdf.render, filename: 'hello.pdf', type: 'application/pdf', disposition: 'inline')
   end
end
