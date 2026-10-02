cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.639"
  sha256 arm:   "d8cd275c975d24f33fc932de091076a48cf28a3dbabff6f109a995ef136537a5",
         intel: "a45eb3dd3fe447f1b5494055917ae9afce0dfa4e047419094cf4014177b79b79"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
