cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.173"
  sha256 arm:   "e78db0b564d74004ac5f493ff9bd41b616b5a6b5aaed0eafcddc442c32804345",
         intel: "085bafa9bac395131b42f0008d85c2423e522a2eaa50eaf723db050b3ef8f2f0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
