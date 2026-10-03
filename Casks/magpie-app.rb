cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.717"
  sha256 arm:   "90a4dd507d62e1ff282d5b0ca57cdbff16a5a938d91c7372ba64c11af77e3549",
         intel: "f55f9abaf743bb4d61208754f342b1f4e5450513d5dfbdbefc0c39a37fff7df1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
