cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.827"
  sha256 arm:   "6437e089996682208d6d8f2cab3f775f2a75fb849adb49ac90891f1def48161e",
         intel: "d4226a071eb346331208dc9c04efc8480c0b5d052c4d7541906f15c69a169ee4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
