cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.795"
  sha256 arm:   "7280a1f466fa260d6e10d31f17239c6c0c4bb5e2a4036a643396ce2e7f41486b",
         intel: "4230e488a32965538822edac8eb322d5dada9c951455ae0be1c73f0787bb302d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
