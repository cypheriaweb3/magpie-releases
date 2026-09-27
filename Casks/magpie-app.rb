cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.209"
  sha256 arm:   "3a7068e2e093b2a1a635a79968dbf380f7eb66a11f29d0609548b1ea37cbb399",
         intel: "24acebd66dfba7852774aa328212b28128aacc3e2466422d968f94013a341883"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
