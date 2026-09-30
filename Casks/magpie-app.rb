cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.480"
  sha256 arm:   "d4d2f5c9a06124cb3ee6e5fc64b26c419045022e0701319b3c422decb59c3956",
         intel: "054bb9bb96650375c5f8427fc5abfb9c725b1759f25950fb2ab0642258f08561"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
