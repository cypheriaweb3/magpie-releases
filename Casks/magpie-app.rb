cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.191"
  sha256 arm:   "505edbb7fed01970ec2dab3ca5c5da0759ef7b1c01e1dad2b47b3c0aaf965555",
         intel: "ef417f950e908d1230503e2a006459de345605e6a278a79800d3ea4eeda591f8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
