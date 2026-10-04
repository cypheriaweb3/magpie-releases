cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.804"
  sha256 arm:   "88963766a90b1a5c2c0588d9c765ee4ba185bae343872eed29977c7c90b3f8f2",
         intel: "4dca731d7c9373fabb87010b0a1fd6bde9695aa0b76652a399c62c3693e37c85"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
