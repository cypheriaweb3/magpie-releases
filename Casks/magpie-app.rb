cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.605"
  sha256 arm:   "5ec13019feaef4d3d7c4e9f3ae1631ae1c7a19e633334f383814bc485d45050d",
         intel: "e50f80c8c4cf249c412bfcda1fc2cc353c281ed27919ca145b3f04d58548c07a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
