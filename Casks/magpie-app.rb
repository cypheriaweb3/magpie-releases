cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.710"
  sha256 arm:   "0a38d9fa7e7cc209dfd77acb326784609b4111d0fa38808c2e36cf1eb5784723",
         intel: "6223fe16f651848504deb3fc7341ceb595a2f4a610c542fa16706b7fdc0a2f36"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
