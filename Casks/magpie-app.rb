cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.340"
  sha256 arm:   "d143361099ee826b147009d4b60751bbca0bb8fc1399914d26bee765b0adc779",
         intel: "056a87e752983bbe92240f5b01bbe2912fce5d54b5b2c50710c2fc050630640f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
