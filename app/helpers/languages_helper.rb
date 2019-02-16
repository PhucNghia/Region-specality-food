module LanguagesHelper
  def img_language session_img
    return "vietnamese.png" if session_img.nil?
    return session_img == "vi" ? "vietnamese.png" : "english.png"
  end
end
