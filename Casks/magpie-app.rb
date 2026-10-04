cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.806"
  sha256 arm:   "331b2b594918fd0fba80bd83f69c424688efb0c7d78a065448bfd2ac9716a919",
         intel: "08818ae1c02cdb7d0fefd98b8a775f886ee9d99fa3d41b9e4b1fcf083d59038b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
