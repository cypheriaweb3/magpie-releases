cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.569"
  sha256 arm:   "6f7d1619258b26d3db74fe8599ae3e48464a13e19fd7e363c073b99208fc42b3",
         intel: "13490acf79e2ed4bd7315bbc7da30631aa7503ec168aa55aa86a60763811b206"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
