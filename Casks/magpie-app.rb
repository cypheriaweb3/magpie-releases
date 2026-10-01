cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.554"
  sha256 arm:   "477d919524e52d56f1c47f12cff249da84e08b523e174d995ccab9452aba6d90",
         intel: "58e4efa8b5e41dd1bf41b19bc7e32c9ee67459f1aeb08e076441ea118a00a2ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
