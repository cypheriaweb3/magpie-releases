cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.489"
  sha256 arm:   "778a621ff4caa65f762eab1454ca04b9679a7583cf768101f1761652cd3a480d",
         intel: "f9fb15a90d98b65c84ea53996cc9728d7d03eb862e9c3acac9363b0e001ed226"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
