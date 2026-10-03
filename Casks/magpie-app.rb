cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.755"
  sha256 arm:   "b5e431330e7ba22e04dcf04f5b0cb88ed3b92e52ddb433e09c3475df4d5f72a4",
         intel: "56534d0c7d8e2193de76702de578559cad30d83c4a7637089d83844b7348c70d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
