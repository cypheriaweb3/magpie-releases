cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.711"
  sha256 arm:   "beaedc8888b95f8b6f6f0e01c70c5ab7fdee1fd7f27ac3b3884f5afeec498a50",
         intel: "e5ccceb67cc89f2e5724f2e72920b2a7fbc895eaa03c64c59479574d0dd561cf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
