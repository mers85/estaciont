class GetCamsPicturesService
  def perform
    Camera.all.each do |camera|

      # all this should be an api call
      @cam = Cam.find_by(name: camera.streaming_url)
      unless @cam
        @cam = Cam.create(name: camera.streaming_url, last_shown: 0)
      end
      reinitialize_index if @cam.last_shown >= 46
      img_path = "lib/images/#{camera.streaming_url}/"
      img_filename = "img0#{(@cam.last_shown + 1).to_s.rjust(2, '0')}.jpg"
      @cam.last_shown += 1
      @cam.save
      # end of api call

      sh = Screenshot.new(camera_id: camera.id)
      sh.status = [0, 1, 2].sample
      sh.image.attach(io: File.open(Rails.root.join(img_path, img_filename)), filename: img_filename , content_type: "image/jpg")
      sh.save
    end
  end

  private

  def reinitialize_index
    @cam.last_shown = 0
    @cam.save
  end
end
