cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.414"
  sha256 arm:   "46b87a00d0edecd695259059544490e7e415397a67f6a0b0f7d93154b742ab8c",
         intel: "a8dd708df29b8dae8e01b1ac94f3e508f5fca3486ed5dfe420d0364ff8a31ef9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
