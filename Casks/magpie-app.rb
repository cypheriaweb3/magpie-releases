cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.324"
  sha256 arm:   "23d49311dd2729565bc00736acfa45119188f50ad30a946a5c635e53f852083b",
         intel: "ba7f42b9920386e0747c5099f0f966eab514e5cf251f655aa12eda088ec2673f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
