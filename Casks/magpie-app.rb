cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.202"
  sha256 arm:   "1073a5b98377230df574ff76902e299e7babf651ce14efbe123ea9a65d9b369c",
         intel: "eebb0632ebd50b194ab04d35a739a27f4f9782184742d58690104611e2d25f31"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
