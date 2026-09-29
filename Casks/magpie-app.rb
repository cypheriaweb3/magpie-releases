cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.361"
  sha256 arm:   "5b713766b2f5bae9ad577b314f444600ab0b476c0d3819dd580488bcb1b6e185",
         intel: "543145b56f3611e0020bd93b778f57df68ce0c238cb1171d6f4497bdce2d675e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
