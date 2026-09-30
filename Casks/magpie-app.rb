cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.517"
  sha256 arm:   "5eda81624ea87bde86dc4d93107934a499a97b35fa9987a8fe9a34b815097e3e",
         intel: "3459e3cd080120980d7a36d5fd755433e3afcae166156de7c01570a2000beb8b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
