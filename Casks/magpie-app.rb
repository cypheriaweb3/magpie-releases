cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.848"
  sha256 arm:   "4f3e858a8f37335d5297ef451a605ed125a517250408f3285da496204a572e58",
         intel: "08503a924b6363bb2ab8cdddb2e38d5d07e0e1602668380cd4c666b00fdeca44"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
