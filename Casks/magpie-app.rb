cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.622"
  sha256 arm:   "54bf5f294f1f8a32b45017fa71dcdd4c065f1930fbdb6ac5380701824f136c33",
         intel: "578e0fc871b652db0f4539321409bcff1a4d5d6213af684608744681de1399e0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
