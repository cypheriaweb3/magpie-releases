cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.442"
  sha256 arm:   "da90e7cc37f8a5b073dc995a5fd12aece49aafbf1e2c93abd0b1b2eee4d42359",
         intel: "ab28a0ad586089d57194eca03fd0dde0c6c2dd876fac2ea23682f7aec74dca79"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
