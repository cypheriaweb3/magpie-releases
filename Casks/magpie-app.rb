cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.746"
  sha256 arm:   "f746ae862104096081df14223a5e3816626600665b1a6273b3efdd407aa013de",
         intel: "e96e1c3c50c11b67fa690f11f159eb00a425baf86ee5e494b8e2f170d0893425"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
