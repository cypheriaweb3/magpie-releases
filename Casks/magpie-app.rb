cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.588"
  sha256 arm:   "e867caf333a4b3045a841da262dfbbec7c1b0d404000d464eaab00339ea89002",
         intel: "a10d103e8c200af3a2b06101557200954477da05bce31a6bc60ee077e8052baf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
