cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.584"
  sha256 arm:   "84804c167867d607f6ddc167204b661c65a0b3f89943a342eb3209afa9218738",
         intel: "6f167236c8481c6e003349db9f9f3b528a4d6aa90a359c4e1263699c16f323f8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
