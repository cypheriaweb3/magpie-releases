cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.283"
  sha256 arm:   "9c8fb292a007324a7479df22dffdcad4069e0196fcb7e327125971f40263fde1",
         intel: "6ea55970774497ece3f723d8c35895939d9f3fdd4d178ff6e0dae1fbbd180dd0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
