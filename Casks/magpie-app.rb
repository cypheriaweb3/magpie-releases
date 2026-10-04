cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.843"
  sha256 arm:   "f8c0a1cbb46d877363043b20891bea17e7de8888fca0063ffefb634f7d7e8467",
         intel: "5177ddf24b966499a253a381158825fdc41e1cfe72059c0a534456e87c0e44ba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
