cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.279"
  sha256 arm:   "a7cabf1fa42b27332db4d299827b5d95b11c55299f151d3b98143a0a4a5158c2",
         intel: "8f6c1d0758c70bf3bb0aa31bc268d2a0a2da0d25afc168ae8b0d580a0ba6bbb0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
