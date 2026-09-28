cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.349"
  sha256 arm:   "884f03327f719a3ec0ef75d4efc09694c66406eca217d42a6bf657981fafe394",
         intel: "bdb75d6c2cc2eb74d3c88f0d0ae93b321a6e900078a9827890aa237233ee2e98"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
