cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.760"
  sha256 arm:   "01ba5a2427e26a4ec08fca0010069572c06ecf8d32f19efa287987468ffcf92c",
         intel: "b752e9a77d01f3654944c49038f7849d235e6c2e7f6a527a40ee32eebaf0fd30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
