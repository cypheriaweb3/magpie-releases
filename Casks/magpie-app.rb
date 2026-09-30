cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.466"
  sha256 arm:   "dcb3e28dcbdca4bc2c1321ffb5c53136eb56fb53f6cf74b458f3624ede749c2c",
         intel: "97c50007668a8ebed24fe82b74b7b85380c338f5b8a149b9f22744869f70b3ef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
