cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.866"
  sha256 arm:   "4055b88d94f0f33bc41f0710a1e485f2b6d0ffda983856768d3278d5e1675725",
         intel: "ac25c5b4ac7832f4e6c8f22b6c8404e4e75182a31a3cd48081d7973872d6c6ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
