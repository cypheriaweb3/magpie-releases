cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.421"
  sha256 arm:   "f10fedc15fd00f0ff194aeb37a6a88416c988aabc24915ffd5120ee00a1020fc",
         intel: "1a57e062822aa5a7fa0f5b1a84f7d7779d51521ffb3d230eca5add47b0eb0c3c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
