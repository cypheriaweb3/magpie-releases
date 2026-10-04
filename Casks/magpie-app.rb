cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.851"
  sha256 arm:   "49440d6a441726bb07f1d67f29de33d2c772ee16fdccb025f2caedd3ac8f3213",
         intel: "0ae76f14f1ff6d58b5871bb344eda753d8e346e96039617d144c4c42de7c635f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
