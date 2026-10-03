cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.713"
  sha256 arm:   "5d296c3fed291e57167429f382d8dc7f76cf81a600e3a9241b4affbaac59d8da",
         intel: "12da05f9ae35fe0a9ada272adf62190c235a29778bfe39501c8896ffa8a1f2ab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
