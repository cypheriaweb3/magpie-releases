cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.725"
  sha256 arm:   "1baef2d55268e92efe8e52ca81cb4f5324657ede3d3c07abfeb8323b45eeb810",
         intel: "9ac46ca84c30ddda6e2727dd3b417b5342514377fc9e0f3bcad9ed3c4bd769fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
