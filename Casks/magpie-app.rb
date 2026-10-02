cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.664"
  sha256 arm:   "08091ece7d81cf19df326d54e64a4fe48e5c118d104e800d30e0c706a8df0710",
         intel: "9d6f547f6386fc199b9edabdcb4b317cfa455964420882999c00dcc3843beee7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
