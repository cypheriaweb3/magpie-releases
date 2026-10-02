cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.663"
  sha256 arm:   "7612006c1ca3a309c3f534fc409e4583162da0c4943e1a1992b98b6e91f9298d",
         intel: "624793113f394d6e656e3bb3dfba80f37560380f29f95de59d72fd577aab3cd8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
