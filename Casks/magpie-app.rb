cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.355"
  sha256 arm:   "a9c1dde3baaaa0daad96d16d801cafd5f9f13b073ac83811a63a064b393c96c9",
         intel: "ad647e8db991275fbcb84f65d08bce5edc240a0612f8c8897688646e4a965dbb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
