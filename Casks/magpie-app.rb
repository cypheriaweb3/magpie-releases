cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.593"
  sha256 arm:   "c443ba8dc286927457b82e23e1ea051882a968836747b0959f7ef19986a1b4a9",
         intel: "716fc3d2dcadf82c8f3c7c9e4032bb024f2bec95ef493b5aabbbce256d5e3ba8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
