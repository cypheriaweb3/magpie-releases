cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.797"
  sha256 arm:   "c5cb337fc6f338fc62882ce94998359df2e07fad203859a29f954423b34cbf41",
         intel: "b124b47d0c0ddeb6f80754dc796bf2d08837bad636b661079dfed4728f02eb1f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
