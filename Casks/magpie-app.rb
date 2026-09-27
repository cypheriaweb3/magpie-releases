cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.163"
  sha256 arm:   "070493b59859c3ca8f3f6b496c906ba550655c04364b4d86d21b05cfbda42203",
         intel: "838d94ba59b4e9bb66cc7c5c35b6e13da89db37168273345528b5e56389fcc3c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
