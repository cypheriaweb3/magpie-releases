cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.440"
  sha256 arm:   "69c0a66093e2e2db92023624e45ae4cac2a5d33f8032398d96f22f0525cd9f5b",
         intel: "bffe7c83d70e896ad57aa4606061fe2a448bc486aa7ffa0285097c8cf72e913c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
