cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.219"
  sha256 arm:   "18dda38fdb73ea61309749442fa52e40c22419132f0c6317ab28e2d895059684",
         intel: "1b344bf726e8530f49643f528d366cefbcaa4f7e72308ef1db86b7efb5396cf3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
