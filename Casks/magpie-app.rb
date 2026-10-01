cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.558"
  sha256 arm:   "cf01736989d3108a75e21fde02913d905d8cf2d123be8026a6a1a0a6fc3f0b4e",
         intel: "cf83e1ee29a498fe5b217fd8b2b089ae0341054cf9ce78f21dad6f8df85955d1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
