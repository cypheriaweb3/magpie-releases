cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.167"
  sha256 arm:   "ff862fba9dba932bf8d7914bdbd06bf7fbbcc2949f838787c5c1e7bcc5ad7629",
         intel: "671cdcbb2c3b4310fbb1cbf77088b50c1125f80218da9fd787d91ae87f7536c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
