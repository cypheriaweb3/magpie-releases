cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.888"
  sha256 arm:   "8696fc5b322e5e18df8d8a318f7aa44366988f35d41f0c71359b5f3444d41461",
         intel: "23d2bb3807507f4e42ec82dae7f203491e62bfd780f9b3a2e9e9046e4b31b0f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
