cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.243"
  sha256 arm:   "188c2d4f5c90d0d86cb1266f976ba5659be2e4609842417c286abbed6f64fbb3",
         intel: "c447ebe2caed0eb04a4602b1422152777a1d1cb08012d1303c3f0e7ce6506444"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
