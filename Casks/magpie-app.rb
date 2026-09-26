cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.155"
  sha256 arm:   "17d33d1a6c24d25d3a0af48dd5ec30576914121fdfca625b3b4c6e1749f3eef4",
         intel: "f84f08f229685c1a73564177bde713afbc10ccebf0367ce7bfdfedc028d89a52"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
