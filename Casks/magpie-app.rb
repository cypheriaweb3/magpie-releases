cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.303"
  sha256 arm:   "3068a0f582b484d01430375252bf2895591c0b102a1834f48105fe6de5d390c1",
         intel: "019b50685a6addd9769a68f0c414931146c9b066866d0c83b375a15b90f02036"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
