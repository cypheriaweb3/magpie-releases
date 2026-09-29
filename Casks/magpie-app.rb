cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.410"
  sha256 arm:   "7a9dc9940e21ef40808c5a249096174ac1a605c299de7ee798015e85a250b8c8",
         intel: "a53b747388330cf88f3c45ae0b31283c5aae2a1e7cde5d1347444fc253f78216"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
