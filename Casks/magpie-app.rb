cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.432"
  sha256 arm:   "b9759f1d09dc0fd17f511c9e36b2d080f4122e18d532dfd0feab3daba976fd24",
         intel: "55a6fc2154a2754e4822f9bbbe09b0a1b55666298155c541e12b3e7b45c776f3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
