cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.647"
  sha256 arm:   "0d118273b732d8a4386774914a59dfa28648a2357f2f16eeab2e97795069c83d",
         intel: "cc84ecc89b24fb4318ebb8eaf79e13bbcf42c850c994f99bb29785b5477e0a28"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
