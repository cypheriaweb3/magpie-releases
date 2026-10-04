cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.833"
  sha256 arm:   "d09c1f93a503229064764a58de3fe6fc2ea44728e7d27e148322344d3c1d974a",
         intel: "e9c8eefbd4941fceeea740869468d567d2564fa63f77fc3c2335f9211b34b3b8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
