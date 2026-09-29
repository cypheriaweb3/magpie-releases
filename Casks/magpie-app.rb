cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.380"
  sha256 arm:   "7bc6f898ff809abdfbed2d8faf16fe2730718f6314417375c2e051db6c532fc4",
         intel: "ffd13709790669675b478b488679967e675ebabbad175fc9ff2054d8809f4734"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
