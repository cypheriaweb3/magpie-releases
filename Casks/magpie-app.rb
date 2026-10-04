cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.814"
  sha256 arm:   "714ce72959347a4601331d9c1b7372bcd697451bc782233450a43f4d84709312",
         intel: "0eb1aeedeeea0b856f39c502c40bf88886b7454b1112b9fa0f3b5a8f4d579d8b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
