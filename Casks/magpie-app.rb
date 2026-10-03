cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.778"
  sha256 arm:   "d104bbf3e5ca651608e988266cd17cdd2ff15a9dfebbd3754bea2867ac1b96d7",
         intel: "28c686ef51b4d84e2e1fa3548bbbd5db16756f8d507f98a1a0c468ec530d7057"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
