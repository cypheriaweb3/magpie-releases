cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.878"
  sha256 arm:   "5be17766fabb0a1639fb12170f124a4baafa5e12b1d1e45ad5e121a43730ac49",
         intel: "c21236f2077c864d927de317d71cea0605649f8e5cc5777b736bf2337d0bd966"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
