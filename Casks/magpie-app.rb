cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.583"
  sha256 arm:   "4707a688064af09d7c869c2f55d3d66ca6ee4572eb96239d0fe9c1c2e44d316e",
         intel: "4f7c790fba2feb019b573b35908279291a6dc1059fbb90976f21ade752fa64c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
