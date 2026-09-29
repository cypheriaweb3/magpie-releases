cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.354"
  sha256 arm:   "2cfe8622acbafdabdda46311daab468dab38f1f941a23e249adb6e02937ef724",
         intel: "d28d9e1f62f2b24800a4ea5f0fb35f8ccc4aa9c41d6cec5a62b9b0dc1f2db5c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
