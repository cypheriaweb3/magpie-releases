cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.177"
  sha256 arm:   "3bf5a16726c22422426db751d71216504f2753235e58a4871834d31c1b001726",
         intel: "ab6139c71d241a0428a0d8ec65a222c78f6896356a6885362b0e3030a2072f75"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
