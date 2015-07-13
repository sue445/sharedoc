class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  resize_to_fit(300, "") # 横300px にリサイズ

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(png)
  end
end

