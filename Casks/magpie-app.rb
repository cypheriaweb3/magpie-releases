cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.769"
  sha256 arm:   "e5eb0f94a0f462495b51b1615276f3413d6759cdc0db933de592bcd5a3fddce1",
         intel: "5297928ac3c2a52b01484bfc8a8d69334c5c2c931e0f15b8ea413e1b976cfb47"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
