cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.632"
  sha256 arm:   "e7f2b3ea0ef286506ea6239c0bfdb8a1c9a7f2b8c3e3786e1bbdbbc65b9f3054",
         intel: "0d1a87399b4fae39671b86ac39fed7eefcd22f97860d635cfe85ac0ca6d14ea6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
