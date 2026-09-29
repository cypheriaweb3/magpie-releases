cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.395"
  sha256 arm:   "47a708222204b8b24d45c040a9cefe3dd41f4bc3d8abe85e9f8b31fc15e18f8c",
         intel: "a6a38df54e6cb7ed736a1483997ca3e9bb9011c733066b92d497cec08a2963d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
