cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.549"
  sha256 arm:   "169b9f62d449d4ba92ff7923a43c90ff5df4288755924fc5a1341fdf69926172",
         intel: "b71bd65986ddf7a102a5ed6add2adc61584b1cc0117d23e27f92e036c384f2b0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
