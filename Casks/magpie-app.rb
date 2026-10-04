cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.871"
  sha256 arm:   "98e6fca452296a14364e4d63c8fea4405b86d2c2e4350c253d8749513e4a9fcc",
         intel: "e2440027528a510a1c9fc60e0f3ea18ddb13f89e37e950b2aa0d71d408ca2c9b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
