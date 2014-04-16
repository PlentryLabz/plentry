class ApplicationUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "system/uploads/#{model.class.model_name.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    "/images/fallback/#{model.class.model_name.underscore}/" + [mounted_as, version_name].compact.join("_")
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    original_filename.present? ? original_filename : file.extension.to_s
  end
end