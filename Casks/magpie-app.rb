cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.273"
  sha256 arm:   "0a0f2b9e07b3c1eab5dea511d8155f32d481cbf87e8c93ab1777b1d997cf89cf",
         intel: "8bcd032392bb69a933fef27c90776022ad670d38375acdbe3a4813547ff0548d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
