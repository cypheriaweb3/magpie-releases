cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.451"
  sha256 arm:   "3eb82ae349c2d46012e787fa4abe92445001f7eb8230b99cb475cfe0af09457c",
         intel: "1310843ed16de2010ea9823341872f52ba6ed1ca66b3eee9722480b6904e7042"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
