require("ibm_watson/visual_recognition_v3")
require("json")

class Watson
  visual_recognition = IBMWatson::VisualRecognitionV3.new(
    version: "2018-03-19",
    iam_apikey: ENV[WATSON_API_KEY]
  )

  def visual_recognition_image(image)
    File.open(image) do |images_file|
      car_results = visual_recognition.classify(
        images_file: images_file,
        threshold: 0.1,
        classifier_ids: ["estacionTxmodel_1264852095"]
      ).result
      JSON.pretty_generate(car_results)
    end
  end

end
