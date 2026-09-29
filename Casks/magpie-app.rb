cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.357"
  sha256 arm:   "03810d57d32d4d46f74ed6988d88be726b78db6ac8eb768957fb84685da01240",
         intel: "86ed1b5c8b774d15e84d9412a8e21fb0056d15967cec8b6a59d33f00bde6c757"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
