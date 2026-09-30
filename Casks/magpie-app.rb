cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.530"
  sha256 arm:   "e514c64b5ca34f75c480e4fa3f70a99bd82a942b626662b898f58570ddf141fb",
         intel: "f7544b20c96349e9a695c846d7843b69f14ef8a5862041f5f71b10268003c903"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
