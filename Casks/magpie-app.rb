cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.439"
  sha256 arm:   "fa705e570ed66edf1b2cee08ba5d3966fc74011772178da07b3ad1971f2f7e18",
         intel: "9d329b7a84fdcbefdb6e2b07c07eed0bce481441f9df4797d9a88c7102c8a129"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
