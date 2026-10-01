cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.586"
  sha256 arm:   "d222b2dfa9ca713e3b92863d8198710fb8e41c8292fb8b163b25db3c52882500",
         intel: "02f7609428c3afbcf4da79d6828210271582fe3e3074323ebaa241bb57c2f6a9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
