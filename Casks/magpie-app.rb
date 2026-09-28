cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.302"
  sha256 arm:   "d0f2f754995d061a9d6b6e3fb05229adf799324fd8fe1cb7d553d060c8836589",
         intel: "be8877651938df8ba02ccb88f53ac5ad17fbf2770363360c673842fea16c9e54"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
