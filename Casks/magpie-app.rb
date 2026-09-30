cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.513"
  sha256 arm:   "460b713574ab54439e63be67216e1fb18e2bb835b6f67327d0d7fd14fd8a34c4",
         intel: "03ec30e7187377daf53e2cfaf253604748c2045c4955a55a832c1243fe0c5b37"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
