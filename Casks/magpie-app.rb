cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.481"
  sha256 arm:   "c38c73e7d0bda522bc826c30672c97f966087d7cc983c2307cf7fc647789920b",
         intel: "6f7b278d92443c40e0471d21b726dbb1217424e9afa3cf91cf7fd33cbf4e96c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
