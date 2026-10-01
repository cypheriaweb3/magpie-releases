cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.562"
  sha256 arm:   "a711bd38887d3ca23f5e49cfa85492cf7ee095e51e0cff36fdd95cabb913fd59",
         intel: "34620da58681812e83d01aa7b9b8c21dc275882dea0aab0ec14b37351a10d82c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
