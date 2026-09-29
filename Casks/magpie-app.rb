cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.405"
  sha256 arm:   "e78d5065504707da4981f4af86192a847db25e5a48897675b8ba823be02ee26a",
         intel: "b317c5080550e0b59bb0b1d722e60cbc0ca76cf315a695527b9376fa1ff20756"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
