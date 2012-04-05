class ProductImagesController < ApplicationController
  def index
    @pictures = ProductPicture.all
    render :json => @pictures.collect { |p| p.to_jq_upload }.to_json
  end

  def create
    @picture = ProductPicture.new(params[:picture])
    if @picture.save
      respond_to do |format|
        format.html {  
          render :json => [@picture.to_jq_upload].to_json, 
          :content_type => 'text/html',
          :layout => false
        }
        format.json {  
          render :json => [@picture.to_jq_upload].to_json     
        }
      end
    else 
      render :json => [{:error => "custom_failure"}], :status => 304
    end
  end

  def destroy
    @picture = ProductPicture.find(params[:id])
    @picture.destroy
    render :json => true
  end
end
