cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.886"
  sha256 arm:   "2dc684258c05f2e55a14e17c6e281937efce2f0436d26be32cfc9e24f9ff0b68",
         intel: "148d5a876b8652951ea06cfd8548a054a8051274c2cd0f1038aacacec2b5c687"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
