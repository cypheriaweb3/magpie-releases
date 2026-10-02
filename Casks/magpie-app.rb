cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.682"
  sha256 arm:   "bb31bfd5a9d86755869445dc429afef14e7f1ae8d3ed22b0f2ce5ba8a4b3d0f8",
         intel: "e67add80e337b6d1b5493ce159a51209f3239f9ed9b9f94063e5665e3da31770"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
