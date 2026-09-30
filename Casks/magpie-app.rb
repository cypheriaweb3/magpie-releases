cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.509"
  sha256 arm:   "8ac4c0efa6c96a303ffeed6d3725c441b6e92aa43c65a2bd44bf85077c844884",
         intel: "8097866fde5e52e23c0c3a33d9cd9ef04ccc83cbfe2ba0ce9ad55aedfe30dfbf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
