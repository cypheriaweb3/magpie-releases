cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.441"
  sha256 arm:   "86884152d5c208b7d36e1c5ad1b4fc934b9348c43437495991d09b26c46af813",
         intel: "6ce877611e3bca89a98681a489a25228027d6f3987bd9506bcdaf7348c2ab859"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
