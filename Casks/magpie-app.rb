cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.171"
  sha256 arm:   "9771db8fa446dbd80bded5892e5f2125e2b599a7d1e261fb446116d68471e1fd",
         intel: "3f608c8a21c286b2829c7e369e28a4863cedb9d6cc26b188385c30599b53d9a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
