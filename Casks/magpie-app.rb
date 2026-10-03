cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.747"
  sha256 arm:   "4be4ac355238f6444bf2e24534aefad935a8b71740d57a0e6aa39aaf79963340",
         intel: "3e76b9465b84fdd914e55ae07bdd0d303bd6f70310b5e3240b09e071960aba6f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
