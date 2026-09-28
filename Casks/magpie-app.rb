cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.335"
  sha256 arm:   "747742666c378af97e9f327b682584ae7579dd58af283affaf5b4739d56ce0f5",
         intel: "18ff5a3e8920d06ccd8b26cce8cbf47c3ed3c84839791571fbf79e17c0c0cb80"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
