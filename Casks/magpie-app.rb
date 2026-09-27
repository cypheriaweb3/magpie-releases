cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.197"
  sha256 arm:   "d95cafc32a80c13faeb084fcc17b84c943487bb14fa3e98ba059509ece09c7b3",
         intel: "4874e1602e425b32c7cc0e0f7aa56b922f2c4b9ddb0a7ea41d575f65d84d3cab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
