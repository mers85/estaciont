require("ibm_watson/visual_recognition_v3")
require("json")
class Watson
  def initialize
    @visual_recognition = IBMWatson::VisualRecognitionV3.new(
      version: "2018-03-19",
      iam_apikey: ENV["WATSON_API_KEY"]
    )
  end

  def visual_recognition_image(image)
    path = "lib/images/watson/image.jpg"
    File.open(path, 'wb') do |file|
      file.write(
        image.download
      )
    end
    File.open(path) do |images_file|
      station_results = @visual_recognition.classify(
        images_file: images_file,
        threshold: 0.1,
        classifier_ids: ["estacionTxmodel_1264852095"]
      ).result
      JSON.pretty_generate(station_results)
    end
  end

end
