cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.217"
  sha256 arm:   "677e120ef8477b7ad04b581c74134c5659f53734d0e623d24bfabf553db0e4c5",
         intel: "f57603aba823f1fbd7dde8cbb23d507fa1df5fa8dd398e954e8eb1630182862a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
