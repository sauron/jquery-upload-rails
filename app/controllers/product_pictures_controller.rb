class ProductPicturesController < ApplicationController

  def index
    @pictures = ProductPicture.all
    respond_to do |wants|
      wants.html
      wants.json do
        render :json => @pictures.collect { |p| p.to_jq_upload }.to_json
      end
    end
  end

  def create
    @picture = ProductPicture.new(params[:product_picture])
    if @picture.save
      respond_to do |wants|
        wants.html {
          render :json => [@picture.to_jq_upload].to_json,
          :content_type => 'text/html',
          :layout => false
        }
        wants.json {
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
