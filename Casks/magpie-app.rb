cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.331"
  sha256 arm:   "a48c0510d36ea76b7b2eb2a3fd59af336ecccddb481e6effafab70cf23b01222",
         intel: "eb1cae578e02ab8f6227a9c1028854a372774ec13080b2b9878f90fe88df10c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
