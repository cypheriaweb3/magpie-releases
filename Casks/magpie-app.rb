cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.856"
  sha256 arm:   "77b22f459fc782aa4f97ffdd4cebd0469952906ff261d861d6e90ee1bcc91092",
         intel: "adf81b3bd5ecbac327187367a90d3b56f17c4d5f752ace9bc855a81455253a77"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
