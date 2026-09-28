cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.247"
  sha256 arm:   "c446aa9e9151d580cee734c71954ea679de1d099a316828ca4b3560fcbb4309a",
         intel: "f490c0b94a17db16c37bed511be8450858fc888e2a6f4989910f79c35c2968b9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
