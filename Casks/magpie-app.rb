cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.239"
  sha256 arm:   "b89505269460261d2c74810853006c47ffd8a9761915aa5d8036f082c866995c",
         intel: "733d15eb041c37e53c98af2d26aad63bbd5c7162ba974518e7cd8b0ef1364037"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
