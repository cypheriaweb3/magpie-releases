cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.181"
  sha256 arm:   "35018108e9147c8e9efc94bbfe77558e62a7ad5f0315108297fc5c3040350304",
         intel: "78a1d47cf6288cc9c46306162b8ec60bdfd4bdb0e1101dae7925cbca7e8a5bf0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
