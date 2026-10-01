cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.595"
  sha256 arm:   "4026d73575cbdbb1725be78ea0f5c94447ef4333afe1ca97e8fb0f1bd403ee00",
         intel: "4d6f070e13cd998d4bd81bbe3cf90b473cd8fa3b75258d4848b7ae1285411235"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
