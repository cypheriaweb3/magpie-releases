cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.348"
  sha256 arm:   "49f577eba619ccf531e9038c30cbd6b35f5bab57fb53ea48a222255d26bdd88b",
         intel: "e9f98fa5696a5bfeb9b1717baa2a7bcd628d905bfb9d428a6d323bed7dab04b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
