cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.815"
  sha256 arm:   "6cba36ee7e5143100f37834a6f038cd94b50423e41a1b8596d168376c81fad43",
         intel: "54962a0e0daf7b34dad56b63153ccfc00ac8e20f18dca43d4c131ac39da8a2b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
