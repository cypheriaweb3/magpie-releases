cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.543"
  sha256 arm:   "82667e095e006c0e57f0cdbf9e2eeba10a032f0a606cbdf68f56f9234defad83",
         intel: "52b8f77f3e64b02c65702a514826993ebbc70ff99dacb5295a135cd165d4b1a0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
