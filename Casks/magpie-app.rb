cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.611"
  sha256 arm:   "3577b3b14c8c6f87ecf17440cda8dc6033102e248c0f61886ec5bf4297341a80",
         intel: "dea01d680fd3789da14b0ea6a407122cb0ee180b3e11f21c7a962bf1961bac2d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
