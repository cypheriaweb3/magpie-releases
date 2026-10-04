cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.883"
  sha256 arm:   "96f1f3417ff66d30a50e4ce0aa79fc654161c475b221c9339eb9748445970d12",
         intel: "27a499a8a6f8ec5f9e0089a35b08c624d75cb6c28b1c5f4f99e672a30250f640"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
