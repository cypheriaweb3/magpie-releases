cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.309"
  sha256 arm:   "77ad0519bafd46838c13ad21d0ebf72340f513220a003fa651734d41cc1f6b63",
         intel: "29f92c06db8f73e2ed24ba7fcb695f2a5b881dd18f8ab510fa2e5345f036c863"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
