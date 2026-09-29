cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.352"
  sha256 arm:   "bb6379630c1350403b3a02282b667a7f7972500f46532ac5a93345a1e6eb4d6e",
         intel: "cc36d71b61aab0ddfa90ec1f0c5de13a1f2316861afff1b67d098dd835eb82ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
