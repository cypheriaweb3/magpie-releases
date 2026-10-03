cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.703"
  sha256 arm:   "ad454f4e36b1aa6be9ded02beb348662c975e6c38dc9ce5cbe2a063771fad599",
         intel: "65c27a21ba138d23abd1909a9e17ef5c2b6023d85794033abf5be66871daea97"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
