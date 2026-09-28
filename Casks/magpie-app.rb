cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.315"
  sha256 arm:   "fe037ae0cf715468177f0a230f81f5628e906f748b2a61517f423eb49443852f",
         intel: "36b66a0d8205a635aae071cdaf7d545eead3a34d8b56599d018df52cba086ee2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
