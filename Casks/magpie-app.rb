cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.393"
  sha256 arm:   "b197cb8bb7cb1fb87d5e5fa83d985d97909af7167f2b1bce6e59b12826254f7b",
         intel: "1ac1fd2b40c29b9d383d3802f7170ab8c597597ef50c5230933069567b5b27e8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
