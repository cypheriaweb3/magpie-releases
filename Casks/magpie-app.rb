cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.796"
  sha256 arm:   "a5373791d140b1def31c5c9d0a6ab66a06262a808a5bd9daa44e76368013f51a",
         intel: "98bdeeea4b87980466e7c1a216d020e6c1e2d05c5db246fe9fd519d35a923a25"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
