cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.793"
  sha256 arm:   "7f93b511a3ac34a211506cd0d876155a277203fe94f74bc6c2fe9e6caaf20462",
         intel: "d3ce601bba9bbe3938b4b49e24b40ca8173368ff4709f8112e55a9d3b950cd19"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
