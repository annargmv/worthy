class SimilarItem < ApplicationRecord
  def items_image(cut_type)
    download_from_s3(cut_type)
  end
end

private

def download_from_s3(shape_name)

  Aws.config = {
      :access_key_id => ENV["AWS_ACCESS_KEY_ID"],
      :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"],
      :region => 'us-west-2'
  }

  s3 = Aws::S3::Resource.new(region: 'us-west-2')

  (1..4).each do |num|
    obj = s3.bucket('diamond-evaluation').object("#{shape_name}/image#{num}.jpg")
    puts obj
    obj.get(response_target: "app/assets/images/image#{num}.jpg")
  end
end
