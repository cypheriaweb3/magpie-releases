cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.665"
  sha256 arm:   "f95a0565839dd752a1a89686ecc8842b193e0ef5cf5b78787d07cab811429765",
         intel: "dca76debfa5a0fb349f04cca8c470f12c8421198e082c7e0c5ceb37c86200b37"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
