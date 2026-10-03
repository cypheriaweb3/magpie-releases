cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.792"
  sha256 arm:   "edc5eee32497285285a38de36c34a8c00ae05b6586feda04844632da212ee0d6",
         intel: "4c0d928770071fa158a569b820fe663d0d7b7734d3ef0b9519bdfb542ec857e7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
