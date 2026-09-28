cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.311"
  sha256 arm:   "52c187f3300fabe1bb234f28bd304f94f7e490585cb4a6030d5d16e1201f54c2",
         intel: "0cd54dab42fe36b935dc618f6d086190a39e45ab5d35811a186f3b28d326c9f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
