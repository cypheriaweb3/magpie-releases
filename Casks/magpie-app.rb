cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.520"
  sha256 arm:   "c4cc2f90ab2e5dd8fd0b59e19e74c06c85c72fdc4535c11e04fcb349919fcb7a",
         intel: "011658648d4d35bbc99437e468c88a2eb6be04b44d475d402ab23fbfae351621"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
