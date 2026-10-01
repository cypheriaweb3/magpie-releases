cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.553"
  sha256 arm:   "0e108857e669181669d96d0a965877127019693c534a8204e74a564c152e8bc9",
         intel: "9ec4c7aaccc9e67895b87d535a1b6eba37703e062148717163eb9e3b412cd403"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
