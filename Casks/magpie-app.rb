cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.536"
  sha256 arm:   "36c0cf924228c83d465a25d7220304fa42f3847ea858e331f9f0c0956163012c",
         intel: "19f7a58355aea7eef01194a882f3229aa57ba8bdacbb892c4f2d5bd071d01310"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
