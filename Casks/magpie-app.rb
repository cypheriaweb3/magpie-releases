cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.351"
  sha256 arm:   "ace68bc088677603471a6645509d6c8cd8103adc00f43d62beac2ada8121730c",
         intel: "78249dadfb94f2a63a70b0ab6e0ff031b97db3df7da832ee04b05a9c01143f94"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
