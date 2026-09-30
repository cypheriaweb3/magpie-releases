cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.531"
  sha256 arm:   "f303cbc14564937104a6310762c0d032f16e7e6868b583645d95d97abc2dc84a",
         intel: "ba8eb14341ebb110683051c69c13f2e33020cdbfedf8103d6137eb8cf50475cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
