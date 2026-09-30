cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.474"
  sha256 arm:   "5f8aaaf01c1698273d48e25e49c5d50be5284831f943386917533d03a9686565",
         intel: "9a1ac14dbcd0b3e467ff0086f1ecaa5ce58b405017e8d1f0ee3551a873012008"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
