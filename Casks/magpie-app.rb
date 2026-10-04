cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.841"
  sha256 arm:   "f71e7ff801b375ad8f843ce9792a8d3744db6a1daf743e60329f30f346917c36",
         intel: "4ac6993b49fef9e3b09a22d63bf3b0ef253667a95148f8aa8be08d789d76df52"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
