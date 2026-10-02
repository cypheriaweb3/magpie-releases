cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.674"
  sha256 arm:   "ca6e43b797a429b0ce88f157114c02c7e99ab4e83d734cf69db4e0b946e66457",
         intel: "a73d5d45f7f591b287a97e412843adf5cf9afca3bc2a02d988b4f32c9d8130e8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
