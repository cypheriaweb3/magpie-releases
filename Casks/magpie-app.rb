cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.245"
  sha256 arm:   "62f279d4fe4eee94aa939849b1ffe17829e7a9cc3af87274aff67d8259c53e93",
         intel: "ae8d5e5b33f08d282cc694e8da032057682b389b08bbb7452c505cdbcd28a2cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
