cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.835"
  sha256 arm:   "330411dc74208354cfb825dca036182bdbf56901c3cf8a3807259b8d69410be7",
         intel: "5d3ae82bacd97524661e648ada095a9621634dee698096ed43b1a2e624b8fa8a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
