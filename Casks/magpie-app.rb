cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.423"
  sha256 arm:   "28a20faa524f19ee2e6ae8c6d53e9710182d08ccfab5d0a6d46388743619548a",
         intel: "75a8188238e903803ad89b18b788b25f32ec8cbd128ad4193699e274f1be96a0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
