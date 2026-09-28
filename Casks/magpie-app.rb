cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.326"
  sha256 arm:   "cceb7120bc7900ba212beee4a861f1ddbacbbddba7d5c3f2c114cdfcdc68e7c9",
         intel: "2dd7f69475962033440befa4cd86df347457cf39af7e94971725af238879f020"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
