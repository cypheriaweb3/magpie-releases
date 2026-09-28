cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.224"
  sha256 arm:   "6464e425941716261af59124c6e484c7ff660edbb0f3698359c12a8fc5bf715c",
         intel: "6d7d607972f2e1545a91634f15a47f32d9c2d4c333c297b1a79c7d1aeefa95bc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
