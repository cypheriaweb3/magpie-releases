cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.887"
  sha256 arm:   "b842eb8832d2185207fe2544f7adcff01e0612af175a8f5876dbc59c80bbe975",
         intel: "ee4a907279b99556195e90f680d7c85069cc009303207ae981e5e5c78ce7dbea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
