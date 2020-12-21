class PortfolioUploader < CarrierWave::Uploader::Base

  storage :aws

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # security, define which type are allowed to upload
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
