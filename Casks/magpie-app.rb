cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.707"
  sha256 arm:   "39958969667ab63dee2ffd7a192e19bb416e6f114c689b8a1a748cc7128b056e",
         intel: "707e8d8f1f7bb1243b436772bbf74040e6691b017af6c5a3c2e1f257be8457c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
