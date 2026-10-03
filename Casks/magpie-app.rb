cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.751"
  sha256 arm:   "f8ee418ab56f91a79d52c25b3eaac73d1380022e1db646de8a7752f573ff1a78",
         intel: "ce05cfbb85a1a9e9189f548555d3b3075d52e68dfdbbdecf431fa5667633b651"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
