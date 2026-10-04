cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.836"
  sha256 arm:   "df367288051e1a5af82da4a66d07b940d07b9e569070932eca54af214c3e0b2a",
         intel: "21f4a7205a9f227800dc255c51fb961a64766484dbf074e3787487adc8d3b5f0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
