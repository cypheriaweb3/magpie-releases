cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.507"
  sha256 arm:   "b4ac84ad7f4ff8bcb5bd46a138eec98cdc08e8b431338717f2b548592bd6f79b",
         intel: "a46fe3ee77b8271cd2bd0ab5f397f7b48fb95330ca15041c2f906c5b3f9caac3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
