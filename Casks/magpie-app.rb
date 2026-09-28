cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.268"
  sha256 arm:   "1740fde18ee55a8827bc70056c7e50cce013017fa74384b1616db2519a8bf4b2",
         intel: "32f510bef77298a8307f4575d2ef42a5556eafeb528e3a986bcdbdff3ce739e7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
