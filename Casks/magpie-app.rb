cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.780"
  sha256 arm:   "abcb496afadb2df1bc5c8e085963869aea9df427b49273e78e15e5dc2f86770d",
         intel: "585a902f25944356df78982f23c72a89da804d4111e070238ea1ed1494859f48"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
