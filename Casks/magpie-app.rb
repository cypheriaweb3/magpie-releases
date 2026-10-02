cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.648"
  sha256 arm:   "5357a4ca110b4a6af4df9f77c5b9a625e8479a26079d9d8682f9b0f2c6cec411",
         intel: "07e83e0b9c480f6ef17116aaecaaef75b4e559cfa93cb70e3b41795a2f0b068d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
