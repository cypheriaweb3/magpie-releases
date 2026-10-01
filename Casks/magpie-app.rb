cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.587"
  sha256 arm:   "84bd99394f40feb7959fd3729a48d2a861b2b1feefda0a59864ac7c9d8e2f766",
         intel: "466d8c7f55f4df9b3c63e71b77cae8f832783d1d76a725a9d71218dabd9461af"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
