cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.626"
  sha256 arm:   "ebd7dd0ad07a8ac8bdd08a4b85e97955b6c3f0084a36eaced496895c9a2509ad",
         intel: "fa9e8186c0c066e44b92bdcaca9db5ab13caac44a1c5ca8c4a354e4cb151acab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
