cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.356"
  sha256 arm:   "ec0e01f22de612460729679a0c06111bf61ef13eb4dcfb2a65a971e5bc7b2fb4",
         intel: "640e7f945dd587179151255290ebad2f6d9974da91bf93edf0b5369686fe75e9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
