cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.693"
  sha256 arm:   "5eddbea7cc1ef6a888aa3a33af1eeab843f71f984cf79a7a2400450899ace5fb",
         intel: "8b61202599a00db433736fa3409d1220f191c2e83ff80c7639a2f0f66cd4ecc8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
