cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.294"
  sha256 arm:   "8ce7daee10ce7f407242684b89fdb30f09bf35caa4dd1b64779c4151423ef643",
         intel: "7928be6ee88920a935f455ed21ea2156943755f8edc308f9c4ea790d8ce47f63"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
