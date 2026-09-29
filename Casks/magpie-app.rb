cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.413"
  sha256 arm:   "ca658093cee734360beeb8c6995e217a161b2a21b99b7840f7ab28c98c7a9a29",
         intel: "553cc6bab4321137b292e2086d47586daa39295590c051dbcc89804e24734748"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
