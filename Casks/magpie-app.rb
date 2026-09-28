cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.276"
  sha256 arm:   "248a1651ccf4ce0f055632730da081cbd39dad3e6a47f829243de35d6444ac04",
         intel: "5d8a8c049f222de226b3a0057349735998b7a87ac12925d8947b3a367000dd95"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
