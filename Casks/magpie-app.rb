cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.540"
  sha256 arm:   "f7b2ed00772942c489242892fee40faaeab43f3e75bf66e98fadad4fa78ecc67",
         intel: "08a031dda297dc919f2174541af2e6554c7214f54beeb996e150c5610c033481"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
