cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.776"
  sha256 arm:   "8e68906cb73f52e3da515abd9125b2becd12b73e74040b56626bd77710c2b766",
         intel: "2dbce5904e13595b74b5e1c5119f9ccccc8059481ad4fc84692a8d3468281be7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
