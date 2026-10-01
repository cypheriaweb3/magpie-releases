cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.556"
  sha256 arm:   "53ecc1eb69fb0a90c433d2893a2c566533c6e074940f17702a68d39f024ecea5",
         intel: "cfc3b0b6c05ade07bcab7088c23d186f51b3a1c54e1c040912201f4053b20714"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
