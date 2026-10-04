cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.803"
  sha256 arm:   "9505b3fee22a86da9d164b14fd0b8486a9941da8e680a57c77b31fa3834e34f3",
         intel: "502fc174d6945a9a95b873f34aa724ead6f0b5e6f78d672306e4ad29277294c4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
