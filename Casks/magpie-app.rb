cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.767"
  sha256 arm:   "3e15a96f6b53f877a3385b2edf00cf19efeaaac3138b6115ace5fb200e30f31a",
         intel: "4b7dca5f81424404d247dfce629cf4fd7b8d48a69349ca18bc2980ddcc8d38ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
