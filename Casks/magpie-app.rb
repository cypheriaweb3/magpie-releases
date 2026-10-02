cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.671"
  sha256 arm:   "cf090030272a9fef0b4e68adcb7c8749e8bc5d2c0fe8d428b79ee0f660e18cdb",
         intel: "dd93f68efd6f4dfa7940dd53979474e51dae7c4e7452b2b2de6a7617023b63ef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
