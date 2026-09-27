cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.203"
  sha256 arm:   "f2b552914cd2139f45a7a30e598834c3dd29fbebc53e3522d0183a1b58e8ca27",
         intel: "65c99205e424260e383852d9bbf1c0f96124e31a284d33804c2c5e9f351cf39e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
