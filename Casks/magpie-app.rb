cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.582"
  sha256 arm:   "74d2c94ba03369bcaab06919dc51e1d80d717edea26cf43661863e4caf9a9f3a",
         intel: "a30d6f4fd123fe1494d4a8cbd77c4de6943a054aa48c7a538677481bfe9693f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
