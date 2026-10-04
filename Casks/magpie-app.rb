cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.870"
  sha256 arm:   "9411ca2f4582d85f276258f5b823a89992d2ab6ab903f3f00044257ba80f49cd",
         intel: "3f07accf9c2f137935a8e3caae5800ef5eb306e64bee4e8117767a8fab2a35af"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
