cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.425"
  sha256 arm:   "1e42c08596a884d9814e40a814eb5626468e9070bf2d0574efd2e79264c23609",
         intel: "8d35a69d19ce68a77ebb53e4f314ed6f8a5a535eebbba5ac14d23c85c2fc0c03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
