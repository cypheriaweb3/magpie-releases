cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.323"
  sha256 arm:   "95ae654d2c5218c85672729f34e367bbeb5460cf97555889b3bc95b948a4662e",
         intel: "5e92923da322089d40d45f97419027b9822bf7be8bcbfc7871271bce8b8f1c11"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
