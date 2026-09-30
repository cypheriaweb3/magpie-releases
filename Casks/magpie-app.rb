cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.492"
  sha256 arm:   "ead84d2089291530a76ec9008b86ccde28b5e2aedfc1c53d1ca8fd0946b61d52",
         intel: "a1f9bc02b3c7f86c34f2f0ca9490c0ce971e949db9f8a4e799cf75d043e25787"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
