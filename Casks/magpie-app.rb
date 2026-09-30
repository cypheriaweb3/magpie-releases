cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.524"
  sha256 arm:   "4ff00e6512642feb6d5c774b46b1d00291b9f8fe2d58bc7802987d61a4dc55ad",
         intel: "50ed3ecd8da35af557cbee9071b4bf585d7e466d1f29bbe12833bdb58e3b509d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
