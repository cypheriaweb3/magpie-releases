cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.267"
  sha256 arm:   "8c8dbfef263bd4a63e2c13e8c78ac1a2a57c75fbc8686fc1ddf5c6c96af60bf9",
         intel: "16846af6861651af26e0476900e82baf56872988d7de68a31f27c1a3fdaeff7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
