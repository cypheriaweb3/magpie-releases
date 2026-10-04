cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.865"
  sha256 arm:   "034c0188856fbaca3104d034076fd54a5f863f0a9bb8a0c35a0a45d1b35bff4c",
         intel: "191aecff931119ce8a73066e32facb7465f75c7867933a640d46bb0aa0251044"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
