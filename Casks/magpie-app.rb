cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.314"
  sha256 arm:   "0097fe5cb7ab3d1c9061f8eb8031cfe579a55132865b07ac866d4c7c44a5dc65",
         intel: "01b5ae5dcd04cdc53c1f465ab5e51c1698d98c6d15e5c4fd8f37a013debe5902"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
