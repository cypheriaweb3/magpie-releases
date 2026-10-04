cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.885"
  sha256 arm:   "9190aea8fbb9a2025531da5f4552cd483427f3525d579a2272f6ffed2e287d2e",
         intel: "46220d0acfb43bf2bd8dc64f04d3ca72ec6ccf695e3dbb53e76e3060789f0409"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
