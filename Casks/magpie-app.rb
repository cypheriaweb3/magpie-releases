cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.390"
  sha256 arm:   "8f06580fae08377d68a7f41dd0087fb69457fd36ce562e83e48177fee5b93d41",
         intel: "ff21eff6e1eb87eade2ebe4e5e36473a293c9e13b1b45e4c9119dc5cba54453a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
