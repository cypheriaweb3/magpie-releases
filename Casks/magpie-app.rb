cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.686"
  sha256 arm:   "512a323167f95124ca428cb5d8dabc178c91891e026c444877b660b933510723",
         intel: "3d56e4cad89d3978521cd04e7c409fba559d0eeaee02d5e626c5a1b20f4a7049"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
