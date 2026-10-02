cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.640"
  sha256 arm:   "69f475469a75dd81deed4682bc485914d3258df69d7cad4b6176802788bc3551",
         intel: "8c0f54d056be5915bac00e09d1e70dbdfae6e1317c4514778543e00b1a826c44"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
