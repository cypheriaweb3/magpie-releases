cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.822"
  sha256 arm:   "b55e460c854a9ea32bdc57a9d5de026f6a53441a4398f81f60ee9d2fb6294193",
         intel: "d63d530710f2e8fcc5982afd62244d701d8d10476be133fd0b38e3030798c843"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
