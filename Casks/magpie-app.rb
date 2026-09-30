cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.486"
  sha256 arm:   "52886a84d2ee230287294f95a59d562964a055dcc9d813ca45118e3859ad0203",
         intel: "6a0c489973112fa6503364decd937c0ca4ad4b2ac80c67fcf28889640b639b49"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
