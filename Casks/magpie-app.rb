cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.506"
  sha256 arm:   "5daa5541ef98b890ee3bbdec95b52e92f6442bbd94408057890c715fc9ecf0fe",
         intel: "3f185da35ad0a5b1f7d3479733925a768c7b6bf7f460693a1fea3efb8f6ee7ab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
