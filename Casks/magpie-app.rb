cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.501"
  sha256 arm:   "6335d168ebb82b18c32931ae407149057419e605925fc5ec541e3c7b05eed1c3",
         intel: "52e2143127c841c4308600c01a0cd11268c1ec82d2f7562fbede5320739511b8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
